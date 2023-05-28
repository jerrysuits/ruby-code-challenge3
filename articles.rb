#first class
class Author
     attr_reader :name #creates getter method

     def initialize (name) #this method initiqalizes an authors name
          @name=name
     end

     def name #this method returns the name of the author
          @name
     end

     def articles  #returns array of article instanceswritten by the author
          Article.all.select { |article| article.author == self }
        end
     
     def magazines
     articles.map { |article| article.magazine }.uniq
     end

     def add_article(magazine, title) #creates a new article instance and associates it with author and magazine
          Article.new(self, magazine, title)
     end

     def topic_areas #returns unique arr of strings of magazines author has contributed to
          magazines.map { |magazine| magazine.category }.uniq
     end
end

#second class
class Magazine
     attr_accessor :name :category  #creates setter and getter methods for name and category
     @@all = [] # initializes emptu array to put magazines instances

     def initialize (name, category) #initializes name and category
          @name=name
          @category=category
          @@all << self # pushes y=the instances to the array
     end

     def name #this method returns the name of the magazine
          @name
     end

     def category #this method returns the category of the magazine
          @category
     end

     def self.all #returns an array contINNING MAGAZINE INSTANCES
          @@all
     end

     
  def contributors
     Article.all.select { |article| article.magazine == self }.map { |article| article.author }
   end
end

#third class
class Article
     attr_reader :name :magazine :title
     @@all = []

     def initialize (author, magazine, title)
          @author=author
          @magazine=magazine
          @title=title
          @@all << self
     end

     def title
          @title
     end
     

     def self.all
          @@all
     end
end
