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
      Movie.new("back to the future 2",87,"Family")
    end

    # Get an array of all the rentals a certain user has
    def rentals
        Rental.all.select do |v|
            v.movie == self 
        end
    end

    def users 
        rentals.map do |v|
            v.user
        end
    end


end