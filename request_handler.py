from http.server import BaseHTTPRequestHandler, HTTPServer
import json

from views import (
    create_user,
    login_user,
)
from models import User
from views import (
    get_all_categories,
    get_single_category,
)
from views import (
    get_all_post_tags,
    get_single_post_tag,
)
from views import (
    get_all_comments,
    get_single_comment,
    create_comment,
)


class HandleRequests(BaseHTTPRequestHandler):
    """Handles the requests to this server"""

    def parse_url(self):
        """Parse the url into the resource and id"""
        path_params = self.path.split("/")
        resource = path_params[1]
        if "?" in resource:
            param = resource.split("?")[1]
            resource = resource.split("?")[0]
            pair = param.split("=")
            key = pair[0]
            value = pair[1]
            return (resource, key, value)
        else:
            id = None
            try:
                id = int(path_params[2])
            except (IndexError, ValueError):
                pass
            return (resource, id)

    def _set_headers(self, status):
        """Sets the status code, Content-Type and Access-Control-Allow-Origin
        headers on the response

        Args:
            status (number): the status code to return to the front end
        """
        self.send_response(status)
        self.send_header("Content-type", "application/json")
        self.send_header("Access-Control-Allow-Origin", "*")
        self.end_headers()

    def do_OPTIONS(self):
        """Sets the OPTIONS headers"""
        self.send_response(200)
        self.send_header("Access-Control-Allow-Origin", "*")
        self.send_header("Access-Control-Allow-Methods", "GET, POST, PUT, DELETE")
        self.send_header(
            "Access-Control-Allow-Headers", "X-Requested-With, Content-Type, Accept"
        )
        self.end_headers()

    def do_GET(self):
        response = {}

        (resource, id) = self.parse_url()

        if resource == "categories":
            if id is not None:
                response = get_single_category(id)
                if response is not None:
                    self._set_headers(200)
                else:
                    # if id = none then run this else function
                    self._set_headers(404)
                    response = {
                        "message": f"Cannot compute request on {id}. Please try again."
                    }
            else:
                self._set_headers(200)
                response = get_all_categories()

        if resource == "PostTags":
            if id is not None:
                response = get_single_post_tag(id)
                if response is not None:
                    self._set_headers(200)
                else:
                    self._set_headers(404)
                    response = {
                        "message": f"Cannot compute request on {id}. Please try again."
                    }
            else:
                self._set_headers(200)
                response = get_all_post_tags()

        if resource == "comments":
            if id is not None:
                response = get_single_comment(id)
                if response is not None:
                    self._set_headers(200)
                else:
                    self._set_headers(404)
                    response = {
                        "message": f"Cannot compute request on {id}. Please try again."
                    }
            else:
                self._set_headers(200)
                response = get_all_comments()

        self.wfile.write(json.dumps(response).encode())

    def do_POST(self):
        """Make a post request to the server"""
        self._set_headers(201)
        content_len = int(self.headers.get("content-length", 0))
        post_body = json.loads(self.rfile.read(content_len))
        response = ""
        resource, _ = self.parse_url()

        if resource == "login":
            response = login_user(post_body)
        if resource == "register":
            response = create_user(post_body)

        if resource == "categories":
            if "label" in post_body:
                self._set_headers(201)
                new_category = create_category(post_body)
            else:
                self._set_headers(400)
                new_category = {
                    "message": f'{"label is required" if "label" not in post_body else ""}'
                }
            self.wfile.write(json.dumps(new_category).encode())

        if resource == "subscriptions":
            if "follower_id" in post_body and "author_id" in post_body:
                self._set_headers(201)
                new_subscription = create_subscription(post_body)
            else:
                self._set_headers(400)
                new_subscription = {
                    "message": f'{"follower_id is required" if "follower_id" not in post_body else ""} {"author_id is required" if "author_id" not in post_body else ""}'
                }
            self.wfile.write(json.dumps(new_subscription).encode())

        self.wfile.write(response.encode())

    def do_PUT(self):
        """Handles PUT requests to the server"""
        pass

    def do_DELETE(self):
        """Handle DELETE Requests"""
        pass


def main():
    """Starts the server on port 8088 using the HandleRequests class"""
    host = ""
    port = 8088
    HTTPServer((host, port), HandleRequests).serve_forever()


if __name__ == "__main__":
    main()
