--[[
    ? More details on lua strings
]]

local a_string = "lua string"

print("Type: ".. type(a_string))

-- multi-line strings 

local b_string = [[
    Anything i write here, will be printing! 
                Amazing!
]]

print(b_string)

-- or you can use

print([[This
will
work
to]])

-- or you can use

print("This is like\n js!")

-- to get the length of a string, use '#' 

b_string = #"I am 24 characters long!"

print("String Length: ".. b_string) -- String Length: 24

-- numbers

a_string = 100 * 2 / 5 + 10 - 0

print("Im a number " .. a_string) -- Im a number 50.0

-- You can for string output with string.<>

print(string.upper("i am big string!")) -- I AM BIG STRING!
print(string.lower("A LITTLE FUNCTION!")) -- a little function!

--  Repeat a string

print(string.rep("Copy n Paste", 5))

-- You can also use the format option when printing

print(string.format("pi: %.3f\nMy age: %i", math.pi, 17))

-- others

b_string = "lua or python?"

local begin, ending = string.find(b_string, "lua")

print("Starts: " .. begin .. "\nEnds: " .. ending)