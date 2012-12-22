function love.conf(t)
	
	--Titeleinstellungen
		t.title = "Octopussy's Revenge Reloaded"
		t.author = "Destructive Reality"
	
	--Bildschrimgröße und Grafikeinstellungen
		t.screen.fullscreen = false
		t.screen.width = 800
		t.screen.height = 600
		t.screen.vsync = false
		t.screen.fsaa = 0
	--Kontrollmodule
		t.modules.joystick = false
		t.modules.audio = true
		t.modules.event = true
		t.modules.physics = false
		t.modules.sound = true
	
	--Filesystem
		t.identity = "ORR"
end