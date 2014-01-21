--Octopussy's Revenge Reloaded

--Libraries
	gamestate = require "libs/gamestate"	--Hump.Gamestate
	class = require "libs/class"			--Hump.Class	
	require "libs/sick"						--SICK(Highscores)
	
--Requires
	require "gamestates/mainMenu"
	
--Shortcuts
	lg = love.graphics
	lkid = love.keyboard.isDown
	lf = love.filesystem
	
--Randomseed
	math.randomseed(os.time())
	
--Bildschirm
	screenwidth = lg.getWidth()
	screenheight = lg.getHeight()
	
function love.load()

	--Version
		version = "0.0.1 Alpha"
	
	--Debug
		debugMode = true
		
	--Default Image Filter
		lg.setDefaultFilter("nearest", "nearest")

	--Background-Farbe
		love.graphics.setBackgroundColor(0, 0, 0)
	
	--Erster Gamestate
		gamestate.switch(mainMenu)
		gamestate.init()
		
	--Fonts	
		--lg.setFont(normalFont)
		
	--SICK
		highscore.set("highscores.txt", 10, "None", 0)
		
	--Bildschirmdaten
		width, height, fullscreen, vsync, fsaa = love.window.getMode()
		

end

function love.update(dt)

	--Gamestate-Lib
		gamestate.update(dt)
		
	--Mausposition
		mx, my = love.mouse.getPosition()
		
	--Maushitbox
		mHitbox = {x = mx, y = my, w = 1, h = 1}

end

function love.draw()

	--Gamestate-Lib
		gamestate.draw()		

end

function love.keypressed(key)

	--Gamestate-Lib
		gamestate.keypressed(key)

end

function love.quit()

	highscore.save()
	
end

function love.focus()

	--game:focus(f)
	
end