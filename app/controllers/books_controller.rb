require_relative '../views/books_view'

class BooksController
  def initialize
    @view = BooksView.new
  end

  def list
    # Fetch ALL the books from Active Record
    # Display all books in View
  end

  def add
    # Ask for title => View
    # Ask for price
    # Ask for author
    # Ask for category

    # Active Record
    # Create a new book
    # Save a new book
  end

  def edit
    # Fetch ALL the books from Active Record
    # Display all books

    # Ask for which book by ID

    # Find the book

    # Ask for title => View
    # Ask for price
    # Ask for author
    # Ask for category

    # Edit the data
    # Save the new witrh new data

  end

  def delete
    # Fetch ALL the books from Active Record
    # Display all books

    # Ask for which book by ID

    # Find the book

    # Detroy the book
  end

  def mark_as_rent
    # Fetch ALL the books from Active Record
    # Display all books

    # Ask for which book by ID
    # Find the book
    # Mark as rent
    # Save
  end
end
