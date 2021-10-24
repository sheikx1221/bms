class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :book_name
      t.string :book_author
      t.string :book_description
      t.numeric :category_id
      t.string :book_isbn
      t.numeric :book_pages
      t.numeric :book_price
      t.date :book_publish_date
      t.timestamps
    end
  end
end
