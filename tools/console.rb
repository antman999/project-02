require_relative '../config/environment.rb'

anthony = User.new("Anthony",21,"action")
randoms = User.new("random", 34, "family")

back_future = Movie.new("Back to the future",88,"family")
lion_king = Movie.new("lion king",100,"action")

Rental.new(anthony,lion_king,"false")
Rental.new(randoms,back_future,"true")

binding.pry
puts "welcome"
