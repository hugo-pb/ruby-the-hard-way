## class variables = @@name_of_variable '@@'
## const is declare on ruby when capital first letter but as convention we cappitalize all. 


# Add a class method to your MyCar class that calculates the gas mileage of any car.
 class MyCar
attr_accessor :color
attr_reader :year
attr_reader :model


  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
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

  def to_s 
     "My car is a #{color}, #{year}, #{model}!"
  end
end

MyCar.gas_mileage(13, 351)
my_car = MyCar.new("2010", "Ford Focus", "silver")
puts my_car