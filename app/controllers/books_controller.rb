require_relative '../views/books_view'

class BooksController < ActiveRecord::Migration[7.0]
  def initialize
    @view = BooksView.new
  end

  def list
    # Fetch ALL the books from Active Record
     # Display all books in View
    books = Book.all
    @view.display(books)
  end

  def add
    title = @view.ask_for("title")
    price = @view.ask_for("price").to_i
    author = @view.ask_for("author")
    category = @view.ask_for("category")
    # Ask for title => View
    # Ask for price
    # Ask for author
    # Ask for category

    # Active Record
    # Create a new book
    book = Book.new(title: title, price: price, author: author, category: category )
    # Save a new book
    book.save
  end

  def edit
    # Fetch ALL the books from Active Record
    books = Book.all
    # Display all books
    @view.display(books)

    # Ask for which book by ID
    id = @view.ask_for("ID").to_i

    # Find the book
    book = Book.find(id)

    # Ask for title => View
    # Ask for price
    # Ask for author
    # Ask for category
    new_title = @view.ask_for("title")
    new_price = @view.ask_for("price").to_i
    new_author = @view.ask_for("author")
    new_category = @view.ask_for("category")

    # Edit the data
    book.title = new_title
    book.price = new_price
    book.author = new_author
    book.category = new_category
    # Save the new witrh new data
    book.save
  end

  def delete
    # Fetch ALL the books from Active Record
    # Display all books
    books = Book.all
    @view.display(books)
    # Ask for which book by ID
    id = @view.ask_for("ID").to_i
    # Find the book
    book = Book.find(id)
    # Detroy the book
    book.destroy
  end

  def mark_as_rent
    books = Book.all
    @view.display(books)
    # # Fetch ALL the books from Active Record
    # # Display all books
    id = @view.ask_for("ID").to_i
    # # Ask for which book by ID
    # # Find the book
    book = Book.find(id)

    # Mark as rent
    if book.rent
      book.rent = false
    else
      book.rent = true
    # Save
    end
    book.save
  end
end
