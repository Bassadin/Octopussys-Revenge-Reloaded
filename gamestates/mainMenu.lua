mainMenu = gamestate.new()
	
function mainMenu:init()

end

function mainMenu:update(dt)

end

function mainMenu:draw()

	--Instruktionen
		lg.setColor(255, 255, 255, 255)
		
		lg.print("Octopussy's Revenge Reloaded Awesome Placeholder Text", 20, 30)
		
		lg.setColor(255, 255, 255, 255)
			

end

function mainMenu:keypressed(key)

	if key == "1" then
		gamestate.switch(game)
	elseif key == "2" then
		gamestate.switch(highscores)
	elseif key == "3" then
		gamestate.switch(credits)
	end
	
	--Schlieﬂen mit escape
		if key == "escape" then
			highscore.save()
			love.event.push('quit') 
		end

end