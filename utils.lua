--Verschiedene Funktionen
	
utils = {}

function utils:boxCollide(rect1, rect2) --Jeweils x, y, w und h benötigt (in einer table)
	
	local rect1x2 , rect1y2 , rect2x2 , rect2y2 = rect1.x + rect1.w, rect1.y + rect1.h, rect2.x + rect2.w , rect2.y + rect2.h
  
	return rect1.x < rect2x2 and rect1x2 > rect2.x and rect1.y < rect2y2 and rect1y2 > rect2.y
  
end

return utils