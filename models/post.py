class Post:
  def __init__(self, id, title, user_id, category_id, tag_id, image_url, content, approved, publication_date, updated_date ):
    self.id = id
    self.title = title
    self.user_id = user_id
    self.category_id = category_id
    self.tag_id = tag_id
    self.image_url = image_url
    self.content = content
    self.approved = approved
    self.publication_date = publication_date
    self.updated_date = updated_date
