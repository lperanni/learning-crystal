# Types and Flow

module Exercise

  class User

    getter name : (String | Nil)
    setter name
    getter age : Int8 
    setter age

    def initialize(@name, @age)
    end
    def initialize(@age)
    end

    def parse_user_input

    puts "Update your name: "
    self.name = gets

    puts "Update your age: "
    temp = gets

    if temp
      self.age = temp.to_i8
    end

    puts typeof(age)

  end
  
  def print 

    puts "User : #{self.name}"
    puts "Age : #{self.age}"

  end
  
  end

end



# Testiranje

include Exercise

person = User.new(34_i8)

person.parse_user_input

person.print

