class User
    attr_accessor :name, :age, :fav
    @@all = []
    def initialize(name, age, fav)
        @name = name 
        @age = age
        @fav = fav
        @@all << self
    end

    #Get a list of all User
    def self.all
        @@all
    end


    # Make a new user for rental
    def new_user_rental
        Rental.new("jj","Driver","false")
    end


    #Get a list of all the rentals a user has
    def rentals
        Rental.all.select do |v|
            v.user == self
       end 
    end


    # Get the certain users movies
    def movies
        rentals.map do |v|
            v.movie
        end
    end

    # categories for the certain user
    def categories
        movies.map do |v|
            v.category
        end
    end


end