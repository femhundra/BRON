---------------------------- Ändrar grafik och skit efter vad gamestaten e
------ Gamestates:
------ 1 = Beginning





---------------------------- Jär under så kollar e i vilken game state he o byter grafik

function check_state()

	function love.draw()

		if gamestate == 1 then
		beginning()
		key = 1
		end
		
		if gamestate == 2 then
		henrymap()
		key = 2
		end
		
		love.graphics.setColor(255, 255, 255)
		love.graphics.print("UP/NER/HÖGER/VÄNSTER: Pilar -- SPRING: Z -- TALA: X -- INFO: A", 200, 550 )
		------------------ Koordinater o skit
		if love.keyboard.isDown("a") then
		love.graphics.setColor(255, 255, 255)
		love.graphics.print("X: " .. player.x, 0, 0)
		love.graphics.print("Y: " .. player.y, 0, 10)
		love.graphics.print("Map: " .. key, 0, 20)
		love.graphics.print("Colission: " .. collision, 0, 30)
		end
		
		if love.keyboard.isDown("x") then
		talk()
		end
		

	------------------
		
	end
end
