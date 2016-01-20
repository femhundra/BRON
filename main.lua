require "player"
require "maps"
require "gamestate"
require "collision"
require "ai"
require "box"
require "dialog"
require "items"
gamestate = 1
key = 0
talk_to = false
grab_item = "none"






love.graphics.setDefaultFilter('linear', 'nearest')

function love.load()

---------------------- Bibliotek
	player.load()
	box.load()

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
	check_collisionBOX()
	check_items()
	
	if key == 2 then
	check_collisionITEM()	
	check_collisionAI()
	end
end

function love.draw()

	
	
	

end

