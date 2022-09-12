hello = 'hello'

# check for types

print(type(hello))  # <class 'str' >

# methods

# .upper() - only works on strings | changes str to uppercase
# .lower() - only works on strings | changes str to lowercase
# .capitalize() - only works on strings | changes first char str to uppercase
# .count() - only works on strings | shows a count in str

hello = 'hello'.upper()

# or 

print(hello.upper().count('H'))

# multiplying a string by integer to increase str count

x = 'hello'
y = 3

print(x * y)
