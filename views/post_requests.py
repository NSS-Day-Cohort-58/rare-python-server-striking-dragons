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
            p.category_id
        FROM Post p
        """)

        posts = []
        dataset = db_cursor.fetchall()

        for row in dataset:
        
            post = post(row['id'], row['title'], row['user_id'], row['category_id'])

            posts.append(post.__dict__)

    return posts
