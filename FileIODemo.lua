--[[

	Title:		Filo I/O Demo
	Author:		Christopher Anderson
	E-mail:		theslamanderson@gmail.com
	Date:		2017-03-02
	Desription:	Pluralsight Beginning Lua Course

--]]

--[[
-- Declare File to Write
local file = io.open("test.txt","w")

-- Write to File
file:write("Testing 1 2 3\n")
file:write("ABC 123\n")

-- Close File
file:close()
--]]

--[[
-- Declare File to Read
local file = io.open("test.txt","r")

-- Read Entire File
text = file:read("*a")

-- Print Out Contents of File
print(text)
--]]

-- Declare File to Read
local file = io.open("test.txt","r")

-- Loop Through File Contents
for line in file:lines() do

	-- Print File Contents
	print(line)

end

-- End of Program