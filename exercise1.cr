#Write a Crystal program that accepts three integers and find the maximum of three.


def findMax(firstNum : Int32, secondNum : Int32, thirdNum : Int32)

  temp = firstNum

  if secondNum > temp
    temp = secondNum
  end

  if thirdNum > temp
    temp = thirdNum
  end

  puts "#{temp} is the highest number"

end

findMax(5,10,15)


# Write a Crystal program to convert a given integer (in days) to years, months and days, 
# assumes that all months have 30 days and all years have 365 days.

def convertToDate(input : Int32)
  
  years = input / 365
  months = input % 365 / 30
  days = input % 365 % 30

  puts "Years: #{years}\nMonths: #{months}\nDays: #{days}"

end

convertToDate(2535)

#Write a Crystal program to read a password until it is correct. 
#For wrong password print "Incorrect password" and 
#for correct password print "Correct password" and quit the program. 
#The correct password is 1234.

def checkPass(password : String)

  puts "Enter Password: "

  temp = gets
  
  until temp == password

    puts "Incorrect password"
    temp = gets

  end

  puts "Correct password"
  
end

checkPass("1234")

#Write a Crystal program to read and print the elements of an array of length 7,
#before print, put the triple of the previous 
#position starting from the second position of the array. 

def arrayCreator(inputArray : Array(Int32)) 
  
  6.times do |i|

    inputArray[i + 1] = inputArray[i] * 3

  end

  i = 0

  while i < 7  

    puts "#{i + 1}. member = #{inputArray[i]}"
    i += 1

  end

end

input = [2,2,5,6,7,8,5]

arrayCreator(input)

