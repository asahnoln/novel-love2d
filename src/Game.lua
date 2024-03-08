local class = require 'src.class'
local Game = {}

function Game:new()
  return class.new(self)
end

function Game:showElement(love, element)
  love.graphics.print(element.character.name, 1, 1)
  love.graphics.print(element.text, 10, 10)
end

return Game
