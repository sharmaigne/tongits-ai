local love = require("love")

local ASSETS_PATH = "assets/deck/"

local suits = {
	HEART = 1,
	DIAMOND = 2,
	SPADE = 3,
	CLUB = 4,
}

local deck = {}

-- populate deck
for suit = 1, 4 do
	for rank = 1, 13 do
		local imageName = string.format("%s%d.%d.png", ASSETS_PATH, rank, suit)
		local imageData = love.graphics.newImage(imageName)

		table.insert(deck, {
			rank = rank,
			suit = suit,
			imageData = imageData,
		})
	end
end

function love.load()
	love.window.setTitle("Tong-its!")
end

function love.update() end

function love.draw()
	for i, card in ipairs(deck) do
		if i <= 5 then -- Display the first 5 cards for testing
			love.graphics.draw(card.imageData, 50 + i * 80, 100)
		end
	end
end
