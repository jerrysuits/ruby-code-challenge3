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
