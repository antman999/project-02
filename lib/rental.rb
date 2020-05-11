class Rental
    attr_accessor :user, :movie, :returned
    @@all = []
    def initialize(user,movie,returned)
        @user = user
        @movie = movie
        @returned = returned 
        @@all << self
    end

    #list of all blockbuster rentals
    def self.all
        @@all
    end



end