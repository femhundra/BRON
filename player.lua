player = {}
function player.load()
	player.sprite = love.graphics.newImage("/Graphics/player.png")
	player.width = 40
	player.height = 40
	player.x = 521
	player.y = 134
	player.xvel = 0
	player.yvel = 0
	player.friction = 9.5
	player.speed = 1000
end

function player.draw()	
	love.graphics.draw(player.sprite, player.x, player.y, 0, 4, 4)
end

------------------------ Player "smooth" movements

function player.physics()
	local dt = love.timer.getDelta()
	player.x = player.x + player.xvel * dt
	player.y = player.y + player.yvel * dt
	player.xvel = player.xvel * (1 - math.min(dt*player.friction, 1))
	player.yvel = player.yvel * (1 - math.min(dt*player.friction, 1))
end

------------------------- Playern halls på spelfälti plus map change
-- VÄNSTER OCH HÖGER
function player.bounds()
	if player.x < 0 then
		player.x = 760
		player.xvel = 0
		gamestate = 2 
	end

	if player.x + player.width > screenWidth then
		player.x = 7
		player.xvel = 0
		gamestate = 1
		
	end
-- UPP O NER
	if player.y < 89 then
		player.y = 89
		player.yvel = 0
	end
	
	if player.y > 177 then
	player.y = 177
	player.yvel = 0
	end
	
end

------------------------- Player Move

function player.move(dt)
	local dt = love.timer.getDelta()
	
	if love.keyboard.isDown("right") and player.xvel < player.speed then
	player.xvel = player.xvel + player.speed * dt
	end
	if love.keyboard.isDown("left") and player.xvel > -player.speed then
	player.xvel = player.xvel - player.speed * dt
	end
	if love.keyboard.isDown("up") and player.yvel > -player.speed then
	player.yvel = player.yvel - player.speed * dt
	end
	if love.keyboard.isDown("down") and player.yvel < player.speed then
	player.yvel = player.yvel + player.speed * dt
	end
	if love.keyboard.isDown("z") then
	player.speed = 2000 else
	player.speed = 1000
	end
end

------------------------- Functions
function DRAW_PLAYER()
	player.draw()
end

function UPDATE_PLAYER(dt)
	player.physics(dt)
	player.bounds()
	player.move(dt)
end