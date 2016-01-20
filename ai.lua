ai = {}
function ai.load()
	ai.sprite = love.graphics.newImage("/Graphics/ai1.png")
	ai.width = 40
	ai.height = 40
	ai.x = 269
	ai.y = 97
	ai.xvel = 0
	ai.yvel = 0
	ai.friction = 9.5
	ai.speed = 0
end

function ai.draw()	
	love.graphics.draw(ai.sprite, ai.x, ai.y, 0, 4, 4)
end

function DRAW_AI()
	ai.draw()
end