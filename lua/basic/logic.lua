--[[
    Logic statments for lua

    Like if statments and other things.
]]

local ball

print("Loading ball...")

--[[
    ! Operators
    > less than
    < greater than
    >= less than or equal to
    <= greater than or equal to
    ~= not equall to
    == equal to
]]

local ball = 100

if ball <= 99 then
    print("The ball is to small!")
else if ball >= 100 then
    print("Ball has loaded!")
end
end

-- logical type checks

local typeChecker = "im not a string am i?"

if type(typeChecker) == "string" then 
    if typeChecker then
    print("Data checked true for string!")
    end
    print("Type is string")
else if type(typeChecker) == "number" then
    print("Type is number")
else if type(typeChecker) == "boolean" then
    print("Type is boolean")
end
end
end

-- ? loops

-- starts at number 1, and print the value 10 times.
-- the first number tells you how many numbers to skip each time.

for i = 1, 5, 1 do
    print(i)
end

-- inverse loops 

-- the -1 allows use to inverse the loop

for i = 5, 1, -1 do
    print(i)
end

-- while loops

local people = 1
local runtime = 0

-- simular to normal loops but with more conditional functions

while people > 11 do
    print('Starting loop...')
    if runtime == people then 
        print("Canceling loop...")
        runtime = false -- ends the loop if the conditional value is false.
    end
    people = people -1
    print("People: " .. people)
end

-- infinite loops

-- ? will run the cpu up... no need to test this...

-- repeat 
--     print("GOODBYE WORLD!")
-- until false