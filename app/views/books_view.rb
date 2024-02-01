class BooksView
  def display(books)
    books.each do |book|
      status = book.rent ? "Unavaliable" : "Avaliable"
      puts "ID:#{book.id} - TITLE:#{book.title}"
      puts "Status: #{status}"
    end
  end

  def ask_for(thing)
    puts "What is #{thing}?"
    gets.chomp
  end
end
