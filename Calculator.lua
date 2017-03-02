--[[

	Title:		Calculator
	Author:		Christopher Anderson
	E-mail:		theslamanderson@gmail.com
	Date:		2017-03-02
	Desription:	Pluralsight Beginning Lua Course

--]]

-- Adder Function
function adder(x,y)
	return x + y
end

-- Subtractor Function
function subtractor(x,y)
	return x - y
end

-- Calculate Function
function calculate(x,y,f)
	return f(x,y)
end

-- Prompt User for a Number
print "Enter a number"

-- Declare x Variable Equal to User Input
local x = io.read("*n","*l")

-- Prompt User for Another Number
print "Enter a another number"

-- Declare y Variable Equal to User Input
local y = io.read("*n","*l")

-- Prompt User for Desired Operation
print "Do you want to add or subtract? (Type + or -)"

-- Declare op Variable Equal to User Request
local op = io.read(1,"*l")

-- Set operation Variable Equal to Desired Operation
if op == "-" then
	operation = subtractor
else
	operation = adder
end

-- Call calculate Function with Given Parameters
-- and Print to Console
print(calculate(x,y,operation))

-- End of Program