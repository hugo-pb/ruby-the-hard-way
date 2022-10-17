class Vehicle
attr_accessor :color
attr_reader :year
attr_reader :model

module Towable
  def can_tow?(pounds)
   pounds < 2000 ? true : false
  end
end

@@number_of_vehicles = 0

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
    @@number_of_vehicles += 1 
  end

   

    def self.number_of_vehicles
    puts "This program has created #{@@number_of_vehicles} vehicles"
  end

   def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def shut_down
    @current_speed = 0
    puts "Let's park this bad boy!"
  end

   def spray_paint (new_color)
    self.color = new_color
    puts "new color is #{new_color}"
  end

  def age
    "Your #{self.model} is #{years_old} years old."
  end

  private

  def years_old
    Time.now.year - self.year.to_i
  end


end


 class MyCar < Vehicle
  NUMBER_OF_DOORS = 4
end
class My_truck < Vehicle
  include Towable
  NUMBER_OF_DOORS = 2
  
end



lumina = MyCar.new(1997, 'chevy lumina', 'white')
puts lumina.age 


## student 
class Student
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    grade > other_student.grade
  end

  protected

  def grade
    @grade
  end
end

joe = Student.new("Joe", 90)
bob = Student.new("Bob", 84)
puts "Well done!" if joe.better_grade_than?(bob)