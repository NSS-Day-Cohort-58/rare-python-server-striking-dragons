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

            comment = Comment(row["id"], row["author_id"], row["post_id"], row["content"])

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


def create_comment(new_comment):
  with sqlite3.connect("./db.sqlite3") as conn:

        conn.row_factory = sqlite3.Row
        db_cursor = conn.cursor()

        db_cursor.execute(
          """
        INSERT INTO COMMENTS
          (author_id, post_id, content)
        VALUES
          ( ?, ?, ? );
          """,
          (
            new_comment["author_id"], new_comment["post_id"], new_comment["content"]
          ),
        )

        id = db_cursor.lastrowid

        new_comment["id"] = id

  return new_comment