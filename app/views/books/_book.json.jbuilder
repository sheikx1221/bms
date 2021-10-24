json.extract! book, :id, :book_name, :book_author, :book_description, :category_id, :book_isbn, :book_pages, :book_price, :book_publish_date, :book_image_link, :created_at, :updated_at
json.url book_url(book, format: :json)
