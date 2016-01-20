box = {}
function box.load()
	box.sprite = love.graphics.newImage("/Graphics/box.png")
	box.width = 40
	box.height = 40
	box.x = 436
	box.y = 177
	box.xvel = 0
	box.yvel = 0
	box.friction = 9.5
	box.speed = 0
end

function box.draw()	
	love.graphics.draw(box.sprite, box.x, box.y, 0, 4, 4)
end

function DRAW_BOX()
	box.draw()
end