require "./strings.cr"

include String_funcs

# Prints outputs of exercise files 


# ----------STRING PRACTICE-------------

# This part uses methods defined in string.cr

input = "This is my Test String"

print_input_string()
string_length(input)
puts return_string_as_array(input)
puts return_reversed_string(input)
puts "Number of words in string: #{word_count(input)}"
puts check_input(567)
puts check_input(input)
puts is_blank?(input)
puts split_to_words(input)
puts extract(input, 4)
puts abbrev("Mate Kovac")
puts hide_mail("lperan00@gmail.bs")
puts make_it_weird(input)
puts multiply_string(input, 2)
puts insert_substring(input, "fabulous ", 11)
     