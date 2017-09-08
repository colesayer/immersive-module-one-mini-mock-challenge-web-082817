require 'pry'
class Author

  attr_accessor :name, :books

  @@all = []

  def initialize(name)
    @name = name
    @books = []
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_words
  end

  def books
    @books
  end

  def write_book(title, words)
    book = Book.new(title, words, self)
    self.books << book
  end

  def total_words
    @books.collect do |book|
      book.words
    end.inject(0){|sum,x| sum + x }
  end


end
