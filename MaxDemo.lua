--[[

	Title:		FindMax
	Author:		Christopher Anderson
	E-mail:		theslamanderson@gmail.com
	Date:		2017-03-02
	Desription:	Pluralsight Beginning Lua Course

--]]

-- Maximum Number Function
function findMax(...)
	
	-- Declare Arguments from Parameters
	-- Set max to First Argument
	local arguments = {...}
	local max = ...
	
	-- Iterate Through Arguments List
	for i = 1, #arguments do

		-- Compare Current max to Argument
		if arguments[i] > max then

			-- Set max Variable to Current Argument
			max = arguments[i]
		end
	end
	
	-- Return Final max Value
	return max

end

-- Call Maximum Number Function
answer = findMax(1,5,3,10,8,12,5,2)

-- Print Out Maximum Number
print(answer)

-- End of Program