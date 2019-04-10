
# Classes and methods

class Mineral

  getter common_name : String
  setter common_name
  getter hardness : Float64
  getter crystal_struct : (String | Nil)

  def initialize(@common_name, @hardness)
  end
  def initialize(@common_name, @hardness, @crystal_struct)
  end
  def describe
    "This is #{common_name} with a Mohs hardness of #{hardness} and a structure of #{crystal_struct}."
  end

  def to_s 
    "[ common_name : #{self.common_name}; hardness : #{self.hardness}; crystal_struct : #{self.crystal_struct} ]"
  end

end


stone = Mineral.new("Calcit", 1.5, "Monoclitic")
stone2 = Mineral.new("Eremit", 2.6)

puts stone.to_s

puts stone2.to_s


# Modules 

module Hardness
  def data
    {"talc" => 1, "calcite" => 3, "apatite" => 5, "corundum" => 9}
  end
  def hardness
    data[self.name]
  end
end

class Minerals

  include Hardness
  getter name : String

  def initialize(@name)
  end
end

min = Minerals.new("corundum")
puts min.hardness

# fibers 

chan = Channel(String).new

count = 500000

count.times do |i|

  spawn do 
    chan.send "Fiber #{i} reporting for duty"
  end
  puts chan.receive
end

