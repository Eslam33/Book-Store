json.extract! book, :id, :title, :description, :authername, :created_at, :updated_at
json.url book_url(book, format: :json)
