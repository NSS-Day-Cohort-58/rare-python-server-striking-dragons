import sqlite3
import json
from datetime import datetime
from models import User


def login_user(user):
    """Checks for the user in the database

    Args:
        user (dict): Contains the username and password of the user trying to login

    Returns:
        json string: If the user was found will return valid boolean of True and the user's id as the token
                     If the user was not found will return valid boolean False
    """
    with sqlite3.connect("./db.sqlite3") as conn:
        conn.row_factory = sqlite3.Row
        db_cursor = conn.cursor()

        db_cursor.execute(
            """
            select id, username
            from Users
            where username = ?
            and password = ?
        """,
            (user["username"], user["password"]),
        )

        user_from_db = db_cursor.fetchone()

        if user_from_db is not None:
            response = {"valid": True, "token": user_from_db["id"]}
        else:
            response = {"valid": False}

        return json.dumps(response)


def create_user(user):
    """Adds a user to the database when they register

    Args:
        user (dictionary): The dictionary passed to the register post request

    Returns:
        json string: Contains the token of the newly created user
    """
    with sqlite3.connect("./db.sqlite3") as conn:
        conn.row_factory = sqlite3.Row
        db_cursor = conn.cursor()

        db_cursor.execute(
            """
        Insert into Users (username, first_name, last_name, email, password, profile_image_url, bio, created_on) values (?, ?, ?, ?, ?, ?, ?, 1)
        """,
            (
                user["username"],
                user["first_name"],
                user["last_name"],
                user["email"],
                user["password"],
                user["profile_image_url"],
                user["bio"],
                user["created_on)"],
                datetime.now(),
            ),
        )

        id = db_cursor.lastrowid

        return json.dumps({"token": id, "valid": True})


def get_all_users():

    with sqlite3.connect("./db.sqlite3") as conn:

        conn.row_factory = sqlite3.Row
        db_cursor = conn.cursor()

        db_cursor.execute(
            """
    SELECT
        u.id,
        u.username,
        u.first_name,
        u.last_name,
        u.email,
        u.password,
        u.profile_image_url,
        u.bio,
        u.created_on
    FROM Users u
      """
        )

        users = []

        dataset = db_cursor.fetchall()

        for row in dataset:

            user = User(
                row["id"],
                row["username"],
                row["first_name"],
                row["last_name"],
                row["email"],
                row["password"],
                row["profile_image_url"],
                row["bio"],
                row["created_on)"]
            )

            users.append(user.__dict__)

        return users


def get_single_user(id):
    with sqlite3.connect("./db.sqlite3") as conn:

        conn.row_factory = sqlite3.Row
        db_cursor = conn.cursor()

        db_cursor.execute(
            """
        SELECT
            u.id,
            u.username,
            u.first_name,
            u.last_name,
            u.email,
            u.password,
            u.profile_image_url,
            u.bio,
            u.created_on
        FROM Users u
        WHERE u.id = ?
          """,
            (id,),
        )

        data = db_cursor.fetchone()

        user = User(
                data["id"],
                data["username"],
                data["first_name"],
                data["last_name"],
                data["email"],
                data["password"],
                data["profile_image_url"],
                data["bio"],
                data["created_on)"]
            )

        return user.__dict__
