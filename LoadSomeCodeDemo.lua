--[[

	Title:		Load Some Code Demo
	Author:		Christopher Anderson
	E-mail:		theslamanderson@gmail.com
	Date:		2017-03-02
	Desription:	Pluralsight Beginning Lua Course

--]]

-- Load Guess My Number Game
--g = loadfile("GuessNumberDemo.lua")
--g()
--dofile("GuessNumberDemo.lua")

-- Person Function
function Person(p)
	print(p.Name, p.Age, p.Occupation)
end

-- Load People File
dofile("People.lua")

-- End of Program