class Review < ActiveRecord::Base
    belongs_to :critic
    belongs_to :movie

end










#     attr_accessor :movie, :critic, :rating
#     @@all = []

#     def initialize(movie, critic, rating)
#         @movie = movie
#         @critic = critic
#         @rating = rating 
#         Review.all << self 
#     end

#     def self.all
#         @@all 
#     end

# end