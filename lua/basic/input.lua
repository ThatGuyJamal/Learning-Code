--[[
    How to use lua to check for user inputs
]]

-- io.read() is the lib used to collect terminal input.


print("How old are you?")
local answerOne = io.read()
if answerOne and answerOne ~= nil then 
    print("Your answer is: " .. answerOne)
else
    print("Dont leave me blank...")
end