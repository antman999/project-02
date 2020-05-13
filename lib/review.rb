class Review
    attr_accessor :movie, :critic, :rating
    @@all = []

    def initialize(movie, critic, rating)
        @movie = movie
        @critic = critic
        @rating = rating 
        Review.all << self 
    end

    def self.all
        @@all 
    end

end