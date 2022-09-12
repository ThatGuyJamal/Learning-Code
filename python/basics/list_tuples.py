x = [4, True, 'pizza']

y = 'hi'

print(len(x), len(y))  # 'len' is used to check the length of a list[].

x.extend([4, 5, 5, 5, 5, 5])  # Adds new elements to the list.
print(x)

# ? new table
x = [1, 2, 3, 4]

print(x.pop(2))  # removes the first element from the list (always start count from 0++)

print(x[1])  # allows access to an element in a list

x[0] = 'hello'

print(x)  # changes x[0] from 1 to str('hello')

y = x

print(x, y)  # ['hello', 2, 4] ['hello', 2, 4]

# ? tuple - they cant be changed 

# to change them, you must redefine them...

x = (0, 0, 4, 4)

print(x[2])  # 4
