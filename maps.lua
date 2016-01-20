
maps = {}
function maps.load()
	maps.active = 1
	maps.x = 0
	maps.y = 0
end

------------------------------ ALLA MAPS E JÄR UNDER WOOH

------------------------------ 1. Menu
function menu()

love.graphics.print("Press Space to begin...", 400, 300)

end

------------------------------ 1. THE BEGINNING
beg = {}
function beginning_background()	
	beg.background = love.graphics.newImage("/Graphics/background.png")
	beg.fence = love.graphics.newImage("/Graphics/staket.png")
	beg.lights = love.graphics.newImage("/Graphics/lampona.png")
	beg.candle = love.graphics.newImage("/Graphics/ljus.png")
	beg.candlelights = love.graphics.newImage("/Graphics/ljussken.png")
	love.graphics.draw(beg.background, maps.x, maps.y, 0, 4, 4)
	love.graphics.draw(beg.fence, maps.x, maps.y, 0, 4, 4)
	box.load()
end

function beginning_foreground()
	love.graphics.draw(beg.fence, maps.x, maps.y, 0, 4, 4)
	love.graphics.draw(beg.lights, maps.x, maps.y, 0, 4, 4)
end

function beginning()
	beginning_background()
	DRAW_PLAYER()
	DRAW_BOX()
	beginning_foreground()
end
------------------------------ 2. Henry
henry = {}
function henry_background()	
	henry.background = love.graphics.newImage("/Graphics/background.png")
	henry.fence = love.graphics.newImage("/Graphics/staket.png")
	henry.lights = love.graphics.newImage("/Graphics/lightshenry.png")
	henry.candle = love.graphics.newImage("/Graphics/ljus.png")
	henry.candlelights = love.graphics.newImage("/Graphics/ljussken.png")
	love.graphics.draw(henry.background, maps.x, maps.y, 0, 4, 4)
	love.graphics.draw(henry.fence, maps.x, maps.y, 0, 4, 4)
	love.graphics.draw(henry.candle, maps.x, maps.y, 0, 4, 4)
	ai.load()
	crobar.load()
end

function henry_foreground()
	love.graphics.draw(henry.fence, maps.x, maps.y, 0, 4, 4)
	love.graphics.draw(henry.lights, maps.x, maps.y, 0, 4, 4)
	love.graphics.draw(henry.candlelights, maps.x, maps.y, 0, 4, 4)
end

function henrymap()
	henry_background()
	DRAW_AI()
	item_crowbar()
	DRAW_PLAYER()
	henry_foreground()
	aispawn = true
end
------------------------------ 2. The Bridge
thebridge = {}
function bridge_background()	
	bridge.background = love.graphics.newImage("/Graphics/background.png")
	bridge.fence = love.graphics.newImage("/Graphics/staket.png")
	bridge.lights = love.graphics.newImage("/Graphics/lampona.png")
	bridge.candle = love.graphics.newImage("/Graphics/ljus.png")
	bridge.candlelights = love.graphics.newImage("/Graphics/ljussken.png")
	love.graphics.draw(henry.background, maps.x, maps.y, 0, 4, 4)
	love.graphics.draw(henry.fence, maps.x, maps.y, 0, 4, 4)
end

function bridge_foreground()
	love.graphics.draw(bridge.fence, maps.x, maps.y, 0, 4, 4)
	love.graphics.draw(bridge.lights, maps.x, maps.y, 0, 4, 4)
end

function bridge()
	bridge_background()
	DRAW_PLAYER()
	bridge_foreground()
end

	

------------------------------ ALL MAP FUNCTION E JÄR UNDER WOOOH
