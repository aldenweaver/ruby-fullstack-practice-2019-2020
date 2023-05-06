class Student < ActiveRecord::Base
  def initialize
    if self.active.nil?
      self.active = false 
    end
  end
  
  def to_s
    self.first_name + " " + self.last_name
  end

end