--[[

	Title:		Student Score Demo
	Author:		Christopher Anderson
	E-mail:		theslamanderson@gmail.com
	Date:		2017-03-02
	Desription:	Pluralsight Beginning Lua Course

--]]

-- Declare grades Table
local grades = {Mary="100",Teacher="100"}


-- While Loop to Obtain Names and Grades
while true do
	
	-- Prompt User for Student Name or Quit
	print "Enter student name (q to quit)"

	-- Declare name Variable Equal to User Input
	local name = io.read()

	-- Quit Program If User Enters q
	if name == "q" then
		break
	end

	-- Prompt User for Student Score
	print "Enter student score"

	-- Declare score Variable Equal to User Input
	local score = io.read("*n","*l")

	-- Create Table Entry for name and score of Student
	grades[name] = score

end

-- Iterate Through grades Table
-- Print Out Student name and grade
print "Printing grades!"
for k,v in pairs(grades) do
	print "Grade:"
	print(k,v)
end

-- End of Program