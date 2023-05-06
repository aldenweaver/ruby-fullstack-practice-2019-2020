require 'pry'

class School
    attr_accessor :name, :roster

   
    def initialize(name)
      @name = name
      @roster = {}
    end
   
    def add_student(name, grade)
        #binding.pry
        # find the array for the grade
        gradeRoster = @roster[grade]

        # if there is no array for the grade, 
        # make an empty one
        if gradeRoster.nil?
            gradeRoster = []
        end

        # add the student to their grade's array
        gradeRoster.push(name)

        # replace the grade's student array
        @roster[:grade] = gradeRoster
    end
   
  end