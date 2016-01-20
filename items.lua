-------------- ITEMS

function check_items()
	if grab_item == "crobar" then
		crobar.x = player.x
		crobar.y = player.y
	end
end


---- Crowbar
crobar = {}
function crobar.load()
	crobar.sprite = love.graphics.newImage("/Graphics/Items/crowbar.png")
	crobar.width = 40
	crobar.height = 40
	crobar.x = 60
	crobar.y = 121
end

function item_crowbar()

love.graphics.draw(crobar.sprite, crobar.x, crobar.y, 0, 4, 4)

end