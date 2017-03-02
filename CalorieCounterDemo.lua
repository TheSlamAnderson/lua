--[[

	Title:		Calorie Counter Demo
	Author:		Christopher Anderson
	E-mail:		theslamanderson@gmail.com
	Date:		2017-03-02
	Desription:	Pluralsight Beginning Lua Course

--]]

-- Declare CalorieCounter Table
CalorieCounter = {count=0,goal=2000}

-- CalorieCounter Add Function
function CalorieCounter:add(amount)
	self.count = self.count + amount
end

-- CalorieCounter Goal Function
function CalorieCounter:didReachGoal()
	return self.count >= self.goal
end

-- CalorieCounter New Function
function CalorieCounter:new(t)
	t = t or {}
	setmetatable(t,self)
	self.__index = self
	return t
end

-- Declear Instance of CalorieCounter with Step Features
HealthMonitor = CalorieCounter:new{steps=0,stepGoal=10000}

-- Step Count Add Function
function HealthMonitor:step(amount)
	self.steps = self.steps + amount
end

-- HealthMonitor goal Function
function HealthMonitor:didReachGoal()
	
	local goalsReached = 0
	
	if self.count >= self.goal then
		print("Calorie goal of " .. self.goal .. " reached")
		goalsReached=goalsReached+1
	else
		print("Calorie goal not reached, yet")
	end
	
	if self.steps >= self.stepGoal then
		print("Step goal of " .. self.stepGoal .. " reached")
		goalsReached=goalsReached+1
	else
		print("Step goal not reached, yet")
	end

	return goalsReached >= 2

end

return {
	CalorieCounter=CalorieCounter,
	HealthMonitor=HealthMonitor,
}

-- End of Program