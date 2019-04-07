#First Crystal App


class Person
  def initialize(name : String, age : Int32)

     @name = name
     @age = age

  end
  def name
    @name
  end

  def age
    @age
  end
end


person1 = Person.new("Ivan", 23)

puts("The first Persons name is #{person1.name} who is #{person1.age} years old!")
