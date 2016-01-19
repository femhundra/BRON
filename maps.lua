
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
	love.graphics.draw(beg.candle, maps.x, maps.y, 0, 4, 4)
end

function beginning_foreground()
	love.graphics.draw(beg.fence, maps.x, maps.y, 0, 4, 4)
	love.graphics.draw(beg.lights, maps.x, maps.y, 0, 4, 4)
	love.graphics.draw(beg.candlelights, maps.x, maps.y, 0, 4, 4)
end

function beginning()
	beginning_background()
	DRAW_PLAYER()
	beginning_foreground()
end
------------------------------ 2. Henry
henry = {}
function henry_background()	
	henry.background = love.graphics.newImage("/Graphics/background.png")
	henry.fence = love.graphics.newImage("/Graphics/staket.png")
	henry.lights = love.graphics.newImage("/Graphics/lampona.png")
	henry.candle = love.graphics.newImage("/Graphics/ljus.png")
	henry.candlelights = love.graphics.newImage("/Graphics/ljussken.png")
	love.graphics.draw(henry.background, maps.x, maps.y, 0, 4, 4)
	love.graphics.draw(henry.fence, maps.x, maps.y, 0, 4, 4)
	love.graphics.draw(henry.candle, maps.x, maps.y, 0, 4, 4)
end

function henry_foreground()
	love.graphics.draw(henry.fence, maps.x, maps.y, 0, 4, 4)
	love.graphics.draw(henry.lights, maps.x, maps.y, 0, 4, 4)
	love.graphics.draw(henry.candlelights, maps.x, maps.y, 0, 4, 4)
end

function henrymap()
	henry_background()
	DRAW_PLAYER()
	henry_foreground()
end
------------------------------ 2. Spooky
spook = {}
function spooky_background()	
	spook.background = love.graphics.newImage("/Graphics/background.png")
	spook.fence = love.graphics.newImage("/Graphics/staket.png")
	spook.lights = love.graphics.newImage("/Graphics/lampona.png")
	spook.candle = love.graphics.newImage("/Graphics/ljus.png")
	spook.candlelights = love.graphics.newImage("/Graphics/ljussken.png")
	love.graphics.draw(henry.background, maps.x, maps.y, 0, 4, 4)
	love.graphics.draw(henry.fence, maps.x, maps.y, 0, 4, 4)
end

function spooky_foreground()
	love.graphics.draw(spook.fence, maps.x, maps.y, 0, 4, 4)
	love.graphics.draw(spook.lights, maps.x, maps.y, 0, 4, 4)
end

function spooky()
	spooky_background()
	DRAW_PLAYER()
	spooky_foreground()
end

	

------------------------------ ALL MAP FUNCTION E JÄR UNDER WOOOH
