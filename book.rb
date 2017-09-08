class Book

  attr_accessor :title, :author, :words

  @@all = []

  def initialize(title, words, author)
    @title = title
    @words = words
    @author = author
    @@all << self
  end

  def self.all
    @@all
  end

  def author
    self.author
  end

  def title
    self.title
  end

  def word_count
    self.words
  end

end
