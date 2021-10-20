--[[
    How types work in lua!

    Type nill (similar to null in javascript)
    Type number (similar to int)
    type string
    type boolean
    type tables (simular to arrays or dictionarys)
]]

-- Use the local scope to declar the 'local' variable in Lua.
-- Like 'var' or 'let' in JavaScript

-- variables (using if else statment)

local a

if a then
    print(a) -- this will always be false (nil) since we did not give a an value.
else
    print("A is nil")
end

-- variabiles in strings

local name = "jamal"
print("My name is " .. name) -- My name is jamal

-- boolean

-- true or false values

local TRUE = true

if TRUE then
    print(TRUE)
end

--[[
    ! READ ME
    Lua by default makes any variables without the local key
    word global. Make sure to use local if you dont want it to be globally 
    accessable to the program.
]] 

something_global = "Im a global varible"
print(something_global)

-- Checking types 

-- type() is a built in function that checks the type of anything passed through.

print("The type is: " .. type(something_global)) -- returns string