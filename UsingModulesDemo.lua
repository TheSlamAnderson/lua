--[[

	Title:		Using Modules Demo
	Author:		Christopher Anderson
	E-mail:		theslamanderson@gmail.com
	Date:		2017-03-02
	Desription:	Pluralsight Beginning Lua Course

--]]

-- Include CalorieCounterDemo Module
local Health = require "CalorieCounterDemo"

-- Declare HealthMonitor Class
local HealthMonitor = Health.HealthMonitor

-- Declare Instance of HealthMonitor with New Goals
hm = HealthMonitor:new{goal=1500,stepGoal=5000}

-- Increment Calories and Steps
hm:add(500)
hm:step(5000)

-- Call HealthMonitor Goal Function
-- Print Results
print(hm:didReachGoal())

-- End of Program