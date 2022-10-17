class Person
attr_accessor :name

def initialize(name)
  @name = name
end

def change_name (nname)
  self.name = nname
end

def see_name 
  self.name 
end

end

p = Person.new('L. Ron')
puts p.see_name
p.change_name 'hugo'
puts p.see_name
