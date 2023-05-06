class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    brand_init(brand)
  end

  def brand=(brand)
    brand_init(brand)
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

  private
  def brand_init(brand)
    @brand = brand
      if !BRANDS.include? brand
        BRANDS << brand
      end
  end

end
class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    brand_init(brand)
  end

  def brand=(brand)
    brand_init(brand)
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

  private
  def brand_init(brand)
    @brand = brand
      if !BRANDS.include? brand
        BRANDS << brand
      end
  end

end
class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    brand_init(brand)
  end

  def brand=(brand)
    brand_init(brand)
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

  private
  def brand_init(brand)
    @brand = brand
      if !BRANDS.include? brand
        BRANDS << brand
      end
  end

end
