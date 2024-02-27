local Script = require 'src.Script'
local Game = require 'src.Game'
local Character = require 'src.Character'
local elements = require 'src.elements'

local script = Script:new()
local game = Game:new()

local i = 1
local theEnd = false

function love.load()
  local andy = Character:new 'Andy'
  local me = Character:new 'Me'

  script:add(elements.line(andy, 'Hi!'))
  script:add(elements.line(me, 'Hello.'))
  script:add(elements.line(andy, 'Bye.'))
  script:add(elements.line(me, 'See you!'))
end

function love.keypressed()
  i = i + 1
end

function love.update()
  theEnd = script:part(i) == elements.theEnd
  if theEnd then
    love.event.quit()
  end
end

function love.draw()
  if not theEnd then
    game:showElement(love, script:part(i))
  end
end
