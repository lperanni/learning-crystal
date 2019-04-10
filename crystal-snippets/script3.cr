CURRENCIES = {
  "EUR" => "Euro",
  "CAD" => "Canadian Dollar",
  "CNY" => "Chinese Yuan"
}


puts "Enter the base currency, default is: USD"
base = gets
exit unless base
if base.strip == ""
base = "USD" # take "USD" as default value
end
puts "Enter the other currencies and their exchange rate,"
puts "like this: EUR - 0.84320536"
puts "Stop input by entering 'stop'"
rates = Hash(String, Float64).new
while input = gets
break unless input
input = input.strip
if input == "" || input == "stop"
puts "No more input: ok, we stop"
break
end
if !input.includes?(" - ")
puts("Wrong input format, use: CUR - 1.23456")
break
end
arr = input.split(" - ")
curr = arr[0].upcase
if curr.size != 3
puts "Currency code must be 3 characters"
break
end
rate = arr[1]
rates[curr] = rate.to_f
end
puts "base: #{base}"
puts "rates: #{rates}"