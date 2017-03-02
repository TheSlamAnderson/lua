--[[

	Title:		Simple Counter
	Author:		Christopher Anderson
	E-mail:		theslamanderson@gmail.com
	Date:		2017-03-02
	Desription:	Pluralsight Beginning Lua Course

--]]

-- Simple Counter Function
function simpleCounter(max)
	
	-- Delcare count Variable Equal to 0
	local count = 0
	
	-- Return Anonymous Function
	return function()
	
		-- Increment count Variable
		count = count+1
	
		-- Compare count Variable to max Variable
		if count > max then
			return nil
		end

		return count
	
	end

end

-- Call Simple Counter Function with max of 50
for v in simpleCounter(50) do

	-- Print Out Current Value of v Variable
	print(v)

end

-- End of Program