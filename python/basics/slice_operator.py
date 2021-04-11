x = [0,1,2,3,4,5,6,7,8,9]
y = ['hi', 'bye','lie', 'die','pie', 'eye']

s = 'hello'

# starting slice

# ? sliced = [start:stop:step]

sliced = x[0:4:2] # start a 0, go to 4th index but skip it, then step by 2

print(sliced) # [0, 2]

# reversing a list in py

sliced2 = x[::-1]

print(sliced2)

# sliced on str
sliced = s[::2] # removes last 2 letters in str
print(sliced)