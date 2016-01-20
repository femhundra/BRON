function check_collisionAI()
	if 	player.x < ai.x + ai.width and
		ai.x < player.x + player.width and
		player.y < ai.y + ai.height and
		ai.y < player.y + player.height then
		collision = "ai"
		talk_to = true
		else 
		talk_to = false
	end
end

function check_collisionBOX()
	if 	player.x < box.x + box.width and
	box.x < player.x + player.width and
	player.y < box.y + box.height and
	box.y < player.y + player.height then
	collision = "box"
	else
	collision = "none"
	end
end

function check_collisionITEM()
	if 	player.x < crobar.x + crobar.width and
	crobar.x < player.x + player.width and
	player.y < crobar.y + crobar.height and
	crobar.y < player.y + player.height then
	collision = "crobar"
	grab_item = "crobar"
	else
	collision = "none"
	end
end
