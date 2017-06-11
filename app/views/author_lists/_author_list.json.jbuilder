json.extract! author_list, :id, :author_id, :book_id, :created_at, :updated_at
json.url author_list_url(author_list, format: :json)
