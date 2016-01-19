require "player"
require "maps"
require "gamestate"
gamestate = 1
key = 0





love.graphics.setDefaultFilter('linear', 'nearest')

function love.load()

---------------------- Bibliotek
	player.load()

---------------------- Config
	screenWidth = love.graphics.getWidth()
	screenHeight = love.graphics.getHeight()
---------------------- Meny
	
end

function love.update(dt)
	
	if love.keyboard.isDown("q") then
	love.window.setFullscreen(1)
	end
	
	if love.keyboard.isDown("w") then
	love.window.setFullscreen()
	end
	
	UPDATE_PLAYER()
	player.bounds()
	check_state()
end

function love.draw()
	
	
	

end

