class Review
    # Handles rating getter method
    attr_accessor :rating

    # Handles returning customer and restaurant objects 
    # for that review & once a review is created, should 
    # not be able to change the customer or restaurant
    attr_reader :customer, :restaurant
  
    @@all = []
  
    def initialize(customer, restaurant, rating)
      @customer = customer
      @restaurant  = restaurant
      @rating = rating
  
      # Add new Review to array of all Reviews
      @@all << self
    end
  
    def self.all
      return @@all
    end

    
end  