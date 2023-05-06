class Customer
  attr_accessor :given_name, :family_name

  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name

    # Add new Customer to array of all Customers
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    return @@all
  end

  # Returns a unique array of all restaurants 
  # a customer has reviewed
  def restaurants
    # For each review in reviews, fetch the Restaurant object
    # from the Review class if the Customer object matches self
    index = 0
    restaurants = []

    while index < Review.all.length do
      if Review.all[index].customer == self
        restaurants << Review.all[index].restaurant
      end
      index += 1
    end

    return restaurants.uniq
  end

  # Given a restaurant object and a star rating 
  # (as an integer), creates a new review and 
  # associates it with that customer and restaurant.
  def add_review(restaurant, rating)
    review = Review.new(self, restaurant, rating)
  end

  # Returns the total number of reviews that a customer has authored
  def num_reviews
    index = 0
    reviews = 0

    while index < Review.all.length do
      if Review.all[index].customer == self
        reviews += 1     
      end
        index += 1
    end
    return reviews
  end

  # Given a string of a full name, returns the first customer 
  # whose full name matches
  def self.find_by_name(name)
        # For each review in reviews, fetch the Restaurant object
    # from the Review object SINCE the Customer object matches self
    index = 0
    customers = []

    while index < Review.all.length do
      if Review.all[index].customer.full_name == name
        return Review.all[index].customer
      end
      index += 1
    end
  end

  # given a string of a given name, 
  # returns an array containing all customers with that given name
  def self.find_all_by_given_name(name)
        # For each review in reviews, fetch the Restaurant object
    # from the Review object SINCE the Customer object matches self
    index = 0
    customers = []

    while index < Review.all.length do
      if Review.all[index].customer.given_name == name
        customers << Review.all[index].customer
      end
      index += 1
    end
    return customers
  end

end
