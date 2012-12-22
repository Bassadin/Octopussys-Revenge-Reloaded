--FTR mainMenu.lua

	mainMenu = gamestate.new()
	
function mainMenu:init()

end

function mainMenu:update(dt)

end

function mainMenu:draw()

	--Instruktionen
		lg.setColor(0, 0, 0, 255)
		
		lg.print("PRESS '1' TO START THE GAME", 20, 30)
		lg.print("PRESS '2' TO VIEW HIGHSCORES", 20, 50)
		lg.print("PRESS '3' TO VIEW THE CREDITS", 20, 70)
		lg.print("CLOSE THE GAME USING THE ESCAPE BUTTON", 20, 90)
		
		lg.print("INGAME INSTRUCTIONS:", 20, 140)
		lg.print("- AVOID THE WALLS!", 20, 170)
		lg.print("- PRESS LEFT AND RIGHT TO MOVE", 20, 190)
		lg.print("- PRESS 'ESCAPE' TO PAUSE", 20, 210)
		
		lg.print("The original game on the TI-84 Plus", screenwidth - 320, screenheight - 20)
		lg.print("By Destructive Reality, September 2012 - Build "..version, 5, screenheight - 8)
		
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