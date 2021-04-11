# true | false are boolean

# == - checks for equality
# != - not equal to
# <=
# >=
# ? 
# <

x = 'hello'
y = 'hello'

print( x == y) # true 

print( x != y) # false

# ? Looking at ascii code in python

print('a' > 'Z') # true

print(ord('Z')) # 90
print(ord('a')) # 97

# a is greater than Z - but only in the ordinal (ord) value

# ? Chained conditionals

x = 7 
y = 8 
z = 0

result1 = x == y
result2 = y > x 
result3 = z < x +2

# ? advanced conditionals props

# and 
# or 
# not

result4 = result1 or  result2 or result3 # if all true, then result4 is true

print(result4)

print(not(False and True)) # something cant be false and true, therefor the output is false.

# ? in the order of operations, 'not' is first, 'and' second, 'or' last