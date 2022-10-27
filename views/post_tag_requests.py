import sqlite3
from models import Post_tag
from models.post import Post

def get_all_post_tags():
    with sqlite3.connect("./db.sqlite3") as conn:
        conn.row_factory = sqlite3.Row
        db_cursor = conn.cursor()

        db_cursor.execute("""
        SELECT
            pt.id,
            pt.post_id,
            pt. tag_id
        FROM PostTags pt
        """)

        post_tags = []

        dataset = db_cursor.fetchall()

        for row in dataset:
            post_tag = Post_tag(row['id'], row['post_id'], row['tag_id'])

            post_tags.append(post_tag.__dict__)
            
    return post_tags

def get_single_post_tag(id):
    with sqlite3.connect("./db.sqlite3") as conn:
        conn.row_factory = sqlite3.Row
        db_cursor = conn.cursor()

        db_cursor.execute("""
        SELECT
            pt.id,
            pt.post_id,
            pt.tag_id
        FROM PostTags pt
        WHERE pt.id = ?
        """, (id,))

    data = db_cursor.fetchone()

    if data is not None:
        post_tag = Post_tag(data['id'], data['post_id'], data['tag_id'])

        return post_tag.__dict__
    else:
        return None