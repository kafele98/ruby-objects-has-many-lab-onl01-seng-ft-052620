class Post 
  attr_accessor :title, :author 

  @@all = []
  @@all_by_title = []

  def initialize(title, author=nil)
    @title = title
    @author = author
    @@all << self
    @@all_by_title << self
  end

  def author_name
    if self.author
      self.author.name
    else
      "Author not found!"
    end
  end

  def self.all
    @@all
  end
  
  def self.all_by_title
    @@all_by_title
  end 
end