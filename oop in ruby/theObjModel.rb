# How do we create an object in Ruby? Give an example of the creation of an object.

# car = 'honda' # this is technically an obj
# but better
class car 
end

honda = car.new ## creates obj dog

## solution 
class MyClass
end

my_obj = MyClass.new


##############################################################
# What is a module? What is its purpose? How do we use them with our classes? Create a module for the class you created in exercise 1 and include it properly.
# reusable code? example
module speak(sound)
puts sound
end

class dog 
include speak
end

dog.speak("woof!")
# answer = A module allows us to group reusable code into one place. We use modules in our classes by using the include method invocation, followed by the module name. Modules are also used as a namespace.

module Study
end

class MyClass
  include Study
end

my_obj = MyClass.new

