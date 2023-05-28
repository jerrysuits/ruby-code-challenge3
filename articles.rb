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
     attr_accessor :name, :category  #creates setter and getter methods for name and category
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

      
  def self.find_by_name(name)
     @@all.find { |magazine| magazine.name == name }
   end
   
   def article_titles
     Article.all.select { |article| article.magazine == self }.map { |article| article.title }
   end
   
   def contributing_authors
     authors_counts = Hash.new(0)
     
     Article.all.each do |article|
       authors_counts[article.author] += 1 if article.magazine == self
     end
     
     authors_counts.select { |author, count| count > 2 }.keys
   end
   
     
  def contributors
     Article.all.select { |article| article.magazine == self }.map { |article| article.author }
   end
end

#third class
class Article
     attr_reader :author, :magazine, :title
     @@all = []
   
     def initialize(author, magazine, title)
       @author = author
       @magazine = magazine
       @title = title
       @@all << self
     end
   
     def self.all
       @@all
     end
   end


# ####examples
# # Create instances of authors
# author1 = Author.new("Gatete Njoroge")
# author2 = Author.new("Jeff Koinange")

# # Create instances of magazines
# magazine1 = Magazine.new("Magazine 1", "Category A")
# magazine2 = Magazine.new("Magazine 2", "Category B")

# # Create instances of articles and associate them with authors and magazines
# article1 = Article.new(author1, magazine1, "Article 1")
# article2 = Article.new(author1, magazine2, "Article 2")
# article3 = Article.new(author2, magazine1, "Article 3")

# # Test the relationships and methods
# puts article1.author.name  # Output: John Doe
# puts article2.magazine.name  # Output: Magazine 2

# puts author1.articles.inspect  # Output: [article1, article2]
# puts author1.magazines.inspect  # Output: [magazine1, magazine2]

# puts magazine1.contributors.inspect  # Output: [author1, author2]
# puts magazine2.contributors.inspect  # Output: [author1]

# # Add a new article using the add_article method
# author1.add_article(magazine1, "Article 4")
# puts author1.articles.inspect  # Output: [article1, article2, article4]

# puts author1.topic_areas.inspect  # Output: ["Category A", "Category B"]

# puts Magazine.find_by_name("Magazine 2").name  # Output: Magazine 2

# puts magazine1.article_titles.inspect  # Output: ["Article 1", "Article 3", "Article 4"]

# puts magazine1.contributing_authors.inspect  # Output: [author1, author2]
