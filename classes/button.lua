buttons = class:new()

function button:new( text, x, y, h, w, action)
	
		self.text = text
		self.x = x
		self.y = y
		self.w = w
		self.h = h
		self.action = action	

end

function buttons:update()

	if utils:boxCollide(rect1, rect2) and  then
		
	
	end

end

function buttons:draw()

	

end

function button:action()

	self.action()

end