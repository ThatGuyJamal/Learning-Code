## How to input / output in python

import sys

name = input('Name: ')

# checks if your name is a str
if type(name) == str:
    print("Name verification passed!")
else: 
    print("Your name cant have numbers in it.!")
    sys.exit()

age = input('Age: ')

# checks if the age input is a str
if type(age) == str:
    print("Age verification passed!")
else: 
    print("That is not a number!")
    sys.exit()

print("Your name is " + name + " and your age is " + age + ".")
sys.exit()