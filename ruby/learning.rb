# # Hello There! I wanted to get intro a little ruby as I have never used it before.
# # The video I used to follow for all the information below was (https://www.youtube.com/watch?v=t_ispmWmdjY&t=6s). 
# # Ive been coding in javascript for a while now and wanted to give another language a go. 
# # Not sure how this will compare with python yet but im liking it so far.


# Note: uncomment the '##' code, the simgle should stay commented.


#? priting Basic Shape

puts "   /|"
puts "  / |"
puts " /  |"
puts "/___|"

#? Variables

age = '28'
name = 'Zed'

puts ("There was a man named " + name)
puts ("He wored very hard the last " + age + " years of his life")
puts ('Sometimes he wishes he would have worked harder.')
puts ("Then maybe the last " + age + " would have been worth it...")

#? Data types

# string = 'Hello World!'
# number = 123
# integer = 100
# decimal = 1.5
# boolean = true or false
# nil = 'i have no value (kind of like null from javascript)'

#? String functions

# # Upercase - invert string method to upcase
this_string = 'Hello World'

puts this_string.upcase()

# # Downcase - lower string method to lower string
this_string = 'Hello World'

puts this_string.downcase()

# # Stip - to remove white space in strings
this_string = '   Hello World'

puts this_string.strip()

# # length - Shows the lenth of the string
this_string = 'Hello World'

puts this_string.length()

# # include - checks if something is in your string
this_string = 'Hello World'

puts this_string.include? 'World'

# # Charature pos checking
this_string = 'Hello World'

puts this_string[0, 5]

# # Index - Checks the index position of the string character
this_string = 'Hello World'

puts this_string.index('H')

#? Math and Numbers