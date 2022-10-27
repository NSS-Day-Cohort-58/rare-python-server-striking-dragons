import sqlite3
import json
from models import Comment


def get_all_comments():

    with sqlite3.connect("./db.sqlite3") as conn:

        conn.row_factory = sqlite3.Row
        db_cursor = conn.cursor()

        db_cursor.execute(
            """ 
      SELECT
        co.id,
        co.author_id,
        co.post_id,
        co.content
      FROM Comments co
    """
        )

        comments = []

        dataset = db_cursor.fetchall()

        for row in dataset:

            tag = Comment(row["id"], row["author_id"], row["post_id"], row["content"])

            comments.append(comment.__dict__)

        return comments


def get_single_comment(id):
    with sqlite3.connect("./db.sqlite3") as conn:

        conn.row_factory = sqlite3.Row
        db_cursor = conn.cursor()

        db_cursor.execute(
            """
        SELECT
          co..id,
          co.author_id,
          co.post_id,
          co.content
        FROM Comments co
        WHERE co.id = ?
          """,
            (id,),
        )

        data = db_cursor.fetchone()

        comment = Comment(
            data["id"], data["author_id"], data["post_id"], data["content"]
        )

        return comment.__dict__
