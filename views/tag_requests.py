import sqlite3
import json
from models import Tag


def get_all_tags():

    with sqlite3.connect("./db.sqlite3") as conn:

        conn.row_factory = sqlite3.Row
        db_cursor = conn.cursor()

        db_cursor.execute(
            """
    SELECT
      t.id,
      t.label
    FROM Tags t
      """
        )

        tags = []

        dataset = db_cursor.fetchall()

        for row in dataset:

            tag = Tag(row["id"], row["label"])

            tags.append(tag.__dict__)

        return tags


def get_single_tag(id):
    with sqlite3.connect("./db.sqlite3") as conn:

        conn.row_factory = sqlite3.Row
        db_cursor = conn.cursor()

        db_cursor.execute(
            """
        SELECT
          t.id,
          t.label
        FROM Tags t
        WHERE t.id = ?
          """,
            (id,),
        )

        data = db_cursor.fetchone()

        if data is not None:
          tag = Tag(data['id'], data['label'])

          return tag.__dict__
        else:
          return None

def create_tag(new_tag):
  with sqlite3.connect("./db.sqlite3") as conn:

        conn.row_factory = sqlite3.Row
        db_cursor = conn.cursor()

        db_cursor.execute(
          """
        INSERT INTO TAGS
          (label)
        VALUES
          ( ? );
          """,
          (
            new_tag["label"]
          ),
        )

        id = db_cursor.lastrowid

        new_tag["id"] = id

  return new_tag
