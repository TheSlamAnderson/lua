--[[

	Title:		Guess My Number Game
	Author:		Christopher Anderson
	E-mail:		theslamanderson@gmail.com
	Date:		2017-03-02
	Desription:	Pluralsight Beginning Lua Course

--]]

-- Random Number Function
function getRandomNumber(maxValue)

	-- Setup Random Number Generator
	math.randomseed(os.time())
	math.random()

	-- Declare Random Number
	return math.random(maxValue)

end

-- Response Handler Function
function handleGuesses(lowMessage,highMessage,number)

	-- Declare Table to Contain User Guesses
	local guesses = {}

	-- Loop to Prompt User for Number
	-- and Compare to Random Number
	while answer ~= number do

		-- Declare User Number Variable
		-- Set Equal to User Input
		answer = io.read("*n")

		-- Add User Guess to guesses Table
		guesses[#guesses+1] = answer

		-- Compare User Number to Random Number
		if answer < number then
			print(lowMessage)
		elseif answer > number then
			print(highMessage)
		else
			break
		end

		-- Prompt User for New Number
		print "Guess again"

	end

	-- Return Table Containing User Guesses
	return guesses

end

-- Call Random Number Function
local number = getRandomNumber(100)

-- Prompt User for Number
print "Guess a number"

-- Call Response Handler Function
local guesses = handleGuesses("Too low","Too high",number)

-- Acknolwdge User Success
print "You got it"

-- Print Out All User Guesses
print "Here are your guesses"
for i,v in ipairs(guesses) do
	print(i,v)
end

-- Print Out Random Number
print(number)

-- End of Program