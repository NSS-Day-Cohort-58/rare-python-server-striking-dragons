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

            post = post(row['id'], row['title'], row['user_id'], row['category_id'], row['tag_id'], row['image_url'], 
                        row['content'], row['approved'], row['publication_date'], row['updated_date'])
            posts.append(post.__dict__)

    return posts
