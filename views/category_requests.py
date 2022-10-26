import sqlite3
from models import Category

def get_all_categories():
    with sqlite3.connect("./db.sqlite3") as conn:
        conn.row_factory = sqlite3.Row
        db_cursor = conn.cursor()

        db_cursor.execute("""
        SELECT
            ca.id,
            ca.label
        FROM Categories ca
        """)

        categories = []

        dataset = db_cursor.fetchall()

        for row in dataset:
            category = Category(row['id'], row['label'])

            categories.append(category.__dict__)
            
    return categories

def get_single_category(id):
    with sqlite3.connect("./db.sqlite3") as conn:
        conn.row_factory = sqlite3.Row
        db_cursor = conn.cursor()

        db_cursor.execute("""
        SELECT
            ca.id,
            ca.label
        FROM Categories ca
        """)

    data = db_cursor.fetchone()

    category = Category(data['id'], data['label'])

    return category.__dict__