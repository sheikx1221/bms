require "application_system_test_case"

class BooksTest < ApplicationSystemTestCase
  setup do
    @book = books(:one)
  end

  test "visiting the index" do
    visit books_url
    assert_selector "h1", text: "Books"
  end

  test "creating a Book" do
    visit books_url
    click_on "New Book"

    fill_in "Book author", with: @book.book_author
    fill_in "Book description", with: @book.book_description
    fill_in "Book isbn", with: @book.book_isbn
    fill_in "Book name", with: @book.book_name
    fill_in "Book pages", with: @book.book_pages
    fill_in "Book price", with: @book.book_price
    fill_in "Book publish date", with: @book.book_publish_date
    fill_in "Category", with: @book.category_id
    click_on "Create Book"

    assert_text "Book was successfully created"
    click_on "Back"
  end

  test "updating a Book" do
    visit books_url
    click_on "Edit", match: :first

    fill_in "Book author", with: @book.book_author
    fill_in "Book description", with: @book.book_description
    fill_in "Book isbn", with: @book.book_isbn
    fill_in "Book name", with: @book.book_name
    fill_in "Book pages", with: @book.book_pages
    fill_in "Book price", with: @book.book_price
    fill_in "Book publish date", with: @book.book_publish_date
    fill_in "Category", with: @book.category_id
    click_on "Update Book"

    assert_text "Book was successfully updated"
    click_on "Back"
  end

  test "destroying a Book" do
    visit books_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Book was successfully destroyed"
  end
end
