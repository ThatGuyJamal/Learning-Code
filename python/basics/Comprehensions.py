# a one line list for a dictionary

x = [x for x in range(5)]  # lets you define a for-loop inside a list.

print(x)  # [0, 1, 2, 3, 4]

xxx = [[0 for x in range(100)] for x in range(5)]
print(xxx)  # lol

x = [i for i in range(100) if i % 5 == 0]  # if it is divisible by 5 then add it to the list
print(x)  # [0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85, 90, 95]

# using dictionary's

y = {i: 0 for i in range(100) if i % 5 == 0}
print(
    y)  # {0: 0, 5: 0, 10: 0, 15: 0, 20: 0, 25: 0, 30: 0, 35: 0, 40: 0, 45: 0, 50: 0, 55: 0, 60: 0, 65: 0, 70: 0,
# 75: 0, 80: 0, 85: 0, 90: 0, 95: 0}
