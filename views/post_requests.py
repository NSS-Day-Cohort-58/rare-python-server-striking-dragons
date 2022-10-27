import sqlite3
import json
from models import Post


def get_all_posts():
    # Open a connection to the database
    with sqlite3.connect("./db.sqlite3") as conn:

        # Just use these. It's a Black Box.
        conn.row_factory = sqlite3.Row
        db_cursor = conn.cursor()

        db_cursor.execute("""
        SELECT 
            p.id,
            p.title,
            p.user_id,
            p.category_id,
            p.tag_id,
            p.image_url,
            p.content,
            p.approved,
            p.publication_date,
            p.updated_date
        FROM Posts p
        """)

        posts = []
        dataset = db_cursor.fetchall()

        for row in dataset:

            post = Post(row['id'], row['title'], row['user_id'], row['category_id'], row['tag_id'], row['image_url'], 
                        row['content'], row['approved'], row['publication_date'], row['updated_date'])
            posts.append(post.__dict__)

    return posts

def get_single_post(id):
    with sqlite3.connect("./db.sqlite3") as conn:
        conn.row_factory = sqlite3.Row
        db_cursor = conn.cursor()

        # Use a ? parameter to inject a variable's value
        # into the SQL statement.
        db_cursor.execute("""
        SELECT 
            p.id,
            p.title,
            p.user_id,
            p.category_id,
            p.tag_id,
            p.image_url,
            p.content,
            p.approved,
            p.publication_date,
            p.updated_date
        FROM Posts p
        """, (id, ))

        # Load the single result into memory
        data = db_cursor.fetchone()

        # Create an post instance from the current row
        post = Post(data['id'], data['title'], data['user_id'], data['category_id'], data['tag_id'], data['image_url'], 
                        data['content'], data['approved'], data['publication_date'], data['updated_date'])

        return post.__dict__

def create_post(new_post):
    with sqlite3.connect("./db.sqlite3") as conn:
        db_cursor = conn.cursor()

        db_cursor.execute("""
        INSERT INTO posts
            (id,
            title,
            user_id,
            category_id,
            tag_id,
            image_url,
            content,
            approved,
            publication_date,
            updated_date)
        VALUES
            ( ?, ?, ?, ?, ?,);
        """, (new_post['id'], new_post['title'], new_post['user_id'], new_post['category_id'], new_post['tag_id'], new_post['image_url'], 
                        new_post['content'], new_post['approved'], new_post['publication_date'], new_post['updated_date'], ))

        # The `lastrowid` property on the cursor will return
        # the primary key of the last thing that got added to
        # the database.
        id = db_cursor.lastrowid

        # Add the `id` property to the post dictionary that
        # was sent by the client so that the client sees the
        # primary key in the response.
        new_post['id'] = id


    return new_post