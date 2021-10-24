class AddImagelinkToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :book_image_link, :string
  end
end
