_G.love = require("love")
title_font = love.graphics.newFont("titlefont.ttf", 30) 

function love.load()
	_G.number = 0
	love.graphics.setFont(title_font)
end

function love.draw()
	love.graphics.printf("Alec Bones Dies", 0, 50, 800,  'center')
end


function love.mousepressed(x, y, button)
	if button == 1 then
		function love.draw()
			love.graphics.printf("A Game by Seth Guimont\n Press Enter To Start" , 0, 150, 800, 'center')
		end
	end
end
