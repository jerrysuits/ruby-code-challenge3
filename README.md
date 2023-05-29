# ruby-code-challenge3 Articles - withou ar

Author - Gerald Obede
# The folder FILES has 3 ruby files articles,author and magazine
# Each have different classes


# Author
--Has class author which has initialized name of the author as a string in  the method initialize
--The method name returns he name of the author
--Method articles returns an array of Article instances the author has written
--Method magazines returns a unique array of Magazine instances for which the author has contributed to
--Method add_articles creates a new Article instance and associates it with that author and that magazine given a magazine (as Magazine instance) and a title (as a string).
Method topic_areas 

# Article
--Class Article An article is initialized with an author as an Author object, a magazine as a Magazine object, and title as a string.
An article cannot change its author, magazine, or title after it has been initialized.
--Has method title which returns title for given article
--Arricle .all returns an arrayof all article instances hence why i initialized an empty array @@ all

# Magazine
--Initialized name and category in the method initialize
--Merhod name returns name of the magazine
--Method category returns the category of the magazine
--Magazine.all returns an array containing magazine instances
--Method contributors returns an array of Author instances who have written for this magazine
--self.find_by_name method returns the first magazine object that matches
given a string of magazine's name
--article_titles returns an array strings of the titles of all articles written for that magazine

