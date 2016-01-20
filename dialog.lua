function talk()
	if talk_to then
	love.graphics.print("I smell shitty..", player.x - 15, player.y - 15)
	else
	love.graphics.print("Heeeello!", player.x - 15, player.y - 15)
	end
end
	