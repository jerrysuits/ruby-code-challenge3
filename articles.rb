#first class
class Author
     attr_reader :name #creates getter method

     def initialize (name) #this method initiqalizes an authors name
          @name=name
     end

     def name #this method returns the name of the author
          @name
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

end

#third class
class Article
end
