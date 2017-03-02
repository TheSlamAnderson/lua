--[[

	Title:		Table Library Demo
	Author:		Christopher Anderson
	E-mail:		theslamanderson@gmail.com
	Date:		2017-03-02
	Desription:	Pluralsight Beginning Lua Course

--]]

-- Create stack Table
stack = {}

-- Insert Value Into stack Table
table.insert(stack,32)

-- Print stack Table Values
print(unpack(stack))

-- Insert Value Into stack Table
table.insert(stack,15)

-- Print stack Table Values
print(unpack(stack))

-- Remove Value From stck Table and Print Out
v = table.remove(stack)
print(v)

-- Insert Values Into stack Table
table.insert(stack,13)
table.insert(stack,11)

-- Print stack Table Values
print(unpack(stack))

-- Create queue Table
queue = {}
table.insert(queue,1,"Joe")
table.insert(queue,1,"Bob")
table.insert(queue,1,"Mary")
print(unpack(queue))
table.remove(queue)
print(unpack(queue))
table.remove(queue)
print(unpack(queue))
--]]

-- Create list Table, Sort, and Print
list = {4,2,19,9,8,0,1,12,54}
table.sort(list)
print(unpack(list))

-- End of Program