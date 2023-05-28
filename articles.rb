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
end

#third class
class Article
end
