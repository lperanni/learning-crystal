module String_funcs 

  #Write a program in Crystal to input a string and print it.
  def print_input_string
    puts "Enter a string:"
    input =  gets
    puts "You inputed: #{input}"
  end

  #Write a program in Crystal to find the length of a string
  def string_length(input : String)
    puts "String length is #{input.size()}"
  end

  #3. Write a program in Crystal to separate the individual characters from a string.
  def return_string_as_array(input : String)
    input.split("")
  end

  #Write a program in Crystal to print individual characters of string in reverse order. 
  def return_reversed_string(input : String)
    input.split("").reverse()
  end

  #Write a program in Crystal to count the total number of words in a string. 
  def word_count(input : String)
    input.split(" ").size()
  end

  #Write a Crystal function to check whether an `input` is a string or not. 

  def check_input(input)

    if (typeof(input) == String)
      true
    else
      false
    end
  
  end

  #Write a Crystal function to check whether a string is blank or not.
  def is_blank?(input : String)
    if input != ""
      false
    else
      true
    end
  end

  #Write a Crystal function to split a string and convert it into an array of words. 
  def split_to_words(input : String)
    input.split(" ")
  end
  #Write a Crystal function to extract a specified number of characters from a string
  def extract(input : String, num : Int8)
    ret = ""
    num.times do |i|
      ret += input[i]  
    end
    ret
  end

  #Write a Crystal function to convert a string in abbreviated form.
  def abbrev(name : String)
    arr = name.split(" ")
    arr[1] = " " + arr[1][0].to_s + "."
    arr.join()
  end
  #Write a Crystal function to hide email addresses to protect from unauthorized user.
  def hide_mail(mail : String)
    
   mail.gsub(/.+@/, "......")
  
  end

  #Write a Crystal function that takes a string which has lower and upper case letters as a parameter 
  #and converts upper case letters to lower case, and lower case letters to upper case
  def make_it_weird(input : String)

    temp = ""
    input.each_char do |i|
      if i.lowercase?
          temp += i.upcase
      else 
          temp += i.downcase
      end
    
    end
    return temp
  end
  # Write a Crystal function to concatenates a given string n times (default is 1).
  def multiply_string(input : String, num : Int8)
    temp = ""
    num.times do 
      temp += input
    end
    return temp
  end
  #Write a Crystal function to insert a string within a string at a particular position (default is 1)
  def insert_substring(input : String, sub : String, index = 1)
    input.insert(index, sub)
  end

end



