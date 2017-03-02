--[[

	Title:		Super String Demo
	Author:		Christopher Anderson
	E-mail:		theslamanderson@gmail.com
	Date:		2017-03-02
	Desription:	Pluralsight Beginning Lua Course

--]]

-- Declare Empty meta and SS Tables
local meta = {}
local SS = {}

-- Superstring Function
function SS.new(s)
	local superString = {}
	superString.s = s
	setmetatable(superString,meta)
	return superString
end

-- Concatonation Function
function SS.add(s1,s2)
	return s1.s .. s2.s
end

-- Add functionality for + sign to be used for concatonation
meta.__add = SS.add

-- Add functional for reverse to be called on table entry
meta.__index = function(table,key)
	if key == "reverse" then
		return string.reverse(table.s)
	end
end

-- Declare Variables
firstName = SS.new("Bill")
lastName = SS.new("Gates")

-- Print Out Concatonated Name
print(firstName + lastName)

-- Print Out Reversed Names
print(firstName.reverse)
print(lastName.reverse)

-- End of Program