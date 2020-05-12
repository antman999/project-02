require 'pry'
class Movie
    attr_accessor :title, :rating, :category
    @@all = []
    def initialize (title, rating, category)
        @title = title
        @rating = rating
        @category = category
        @@all << self
    end

    #Get a list of all Movies
    def self.all 
        @@all
    end

    def new_movie
      self.new("back to the future 2",87,"Family")
    end

    # Get an array of all the rentals a certain Movie has
    def rentals
        Rental.all.select do |v|
            v.movie == self 
        end
    end

    #get the users from a movie rented 
    def users 
        rentals.map do |v|
            v.user
        end
    end

    def best_rated 
        best = Movie.all.map do |v|
            v.rating
        end
      best.max
    end
end

# 