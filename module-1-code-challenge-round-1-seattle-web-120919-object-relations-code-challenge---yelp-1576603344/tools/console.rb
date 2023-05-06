require_relative '../config/environment.rb'
require_relative '../app/models/customer.rb'
require_relative '../app/models/restaurant.rb'
require_relative '../app/models/review.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# TEST INITIALIZATIONS #
customer1 = Customer.new("First1", "Last1")
puts customer1

restaurant1 = Restaurant.new("Restaurant1")
puts restaurant1

restaurant2 = Restaurant.new("Restaurant2")
puts restaurant2

review1 = Review.new(customer1, restaurant1, 5)
puts review1

review2 = Review.new(customer1, restaurant2, 2)
puts review2

review3 = Review.new(customer1, restaurant1, 3)
puts review2


# TEST ADDING A REVIEW #
customer1.add_review(restaurant2, 3)

puts Customer.find_by_name(customer1)
puts Customer.find_all_by_given_name(customer1.given_name)
puts Review.all




# TEST CUSTOMER METHODS #

# TEST RESTAURANT METHODS #
puts restaurant1.customers
puts restaurant1.reviews
puts restaurant1.average_star_rating

# TEST REVIEW METHODS #


binding.pry
0 #leave this here to ensure binding.pry isn't the last line