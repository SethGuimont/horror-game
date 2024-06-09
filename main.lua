_G.love = require("love")
local title_font = love.graphics.newFont("titlefont.ttf", 30) 
local text 
local first_scene = love.graphics.newImage("test2.png")
local menu_song


function love.load()
	_G.number = 0
	love.graphics.draw(first_scene)
	love.graphics.setFont(title_font)
	text = "The Death Of Alex Bones"
	--- Music from Sinister Criminal Aura By UNIVERSFIELD
	--- https://freesound.org/s/740206/
	--- License: Attribution 4.0
	menu_song = love.audio.newSource("aura.mp3", "stream")
end

function love.update(dt)
	if not menu_song:isPlaying() then
		love.audio.play(menu_song)
	end
end


function love.keypressed(key)
	if key == "return" then
		text = "A game by Seth Guimont"
		function love.draw()
			love.graphics.printf(text, 0, 50, 1200, 'center')
			love.graphics.printf("menu will go here", 0, 300, 1200, 'center')
		end
	end
end


function love.draw()
	love.graphics.draw(first_scene)
	love.graphics.printf(text, 0, 50, 1200, 'center')
end


