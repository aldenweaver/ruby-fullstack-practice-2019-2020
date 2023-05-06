class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    # Add new Restaurant to array of all Restaurants
    @@all << self
  end

  def self.all 
    @@all
  end

  # Returns a unique list of all customers who have 
  # reviewed a particular restaurant.
  def customers
    # For each review in reviews, fetch the Customer object
    # from the Review class if the Restaurant object matches self
    index = 0
    customers = []

    while index < Review.all.length do
      if Review.all[index].restaurant == self
        customers << Review.all[index].customer
      end
      index += 1
    end

    return customers.uniq
  end

  def reviews
    # For each review in reviews, fetch the Customer object
    # from the Review class if the Restaurant object matches self
    index = 0
    reviews = []

    while index < Review.all.length do
      if Review.all[index].restaurant == self
        reviews << Review.all[index]
      end
      index += 1
    end

    return reviews
  end

  # Returns the average star rating for a restaurant 
  # based on its reviews
  def average_star_rating
    # For each review in reviews, fetch the Customer object
    # from the Review class if the Restaurant object matches self
    index = 0
    total_rating = 0
    count = 0

    while index < Review.all.length do
      if Review.all[index].restaurant == self
        total_rating += Review.all[index].rating
        count += 1
      end
      index += 1
    end

    return total_rating/count
  end
end
