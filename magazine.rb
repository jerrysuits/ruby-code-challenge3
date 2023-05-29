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