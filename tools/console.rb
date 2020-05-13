require_relative '../config/environment.rb'

anthony = User.new("Anthony",21,"action")
randoms = User.new("random", 34, "family")

back_future = Movie.new("Back to the future",88,"family")
lion_king = Movie.new("lion king",100,"action")

Rental.new(anthony,lion_king,"false")
Rental.new(randoms,back_future,"true")

# # # 

# Critic instances (2): 

adam = Critic.new("Adam", "Silver")
belle = Critic.new("Belle", "Gold")

# Review instances(2):

review1 = Review.new(back_future, adam, "Fresh")
review2 = Review.new(lion_king, belle, "Rotten")

binding.pry
puts "welcome"

# 