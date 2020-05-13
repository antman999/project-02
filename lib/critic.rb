class Critic < ActiveRecord::Base
    has_many :reviews
    has_many :movies, through: :reviews

end

















#     attr_accessor :name, :rotten_tomatoes_ranking
#     @@all = []

#     def initialize(name, rotten_tomatoes_ranking)
#         @name = name
#         @rotten_tomatoes_ranking = rotten_tomatoes_ranking
#         Critic.all << self 
#     end

#     def self.all
#         @@all
#     end

#     def reviews
#         Review.all.select do |review|
#             review.critic == self
#         end
#     end

#     def movies
#         reviews.map do |review|
#             review.movies
#         end
#     end

#     def add_review(movie, rating)
#         new_review = Review.new(movie, self, rating)
#         Review.all << new_review
#         "Added #{movie.title.capitalize} to #{self.name}'s reviews."
#     end

# end