from models import Subscription
import sqlite3

def get_all_subscriptions():
    with sqlite3.connect("./db.sqlite3") as conn:
        conn.row_factory = sqlite3.Row
        db_cursor = conn.cursor()

        db_cursor.execute("""
        SELECT
            s.id,
            s.follower_id,
            s.author_id
        FROM Subscriptions s
        """)

        subscriptions = []

        dataset = db_cursor.fetchall()

        for row in dataset:
            subscription = Subscription(row['id'], row['follower_id'], row['author_id'])

            subscriptions.append(subscription.__dict__)
            
    return subscriptions

def get_single_subscription(id):
    with sqlite3.connect("./db.sqlite3") as conn:
        conn.row_factory = sqlite3.Row
        db_cursor = conn.cursor()

        db_cursor.execute("""
        SELECT
            s.id,
            s.follower_id,
            s.author_id
        FROM Subscriptions s
        WHERE s.id = ?
        """, (id,))

    data = db_cursor.fetchone()


    subscription = Subscription(data['id'], data['follower_id'], data['author_id'])

    return subscription.__dict__