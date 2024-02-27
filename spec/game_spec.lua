local mock = require 'luassert.mock'

describe('game', function()
  -- FIX: require real love
  local love = {
    graphics = {
      print = function() end,
    },
  }

  local Game = require 'src.Game'
  local elements = require 'src.elements'
  local inputs = require 'src.inputs'
  local Character = require 'src.Character'

  it('shows characters line', function()
    -- TODO: pass love to new method
    local g = Game:new()
    mock(love, true)

    g:showElement(love, elements.line(Character:new 'Troy', 'Hello hello'))

    -- TODO: Clean before print
    assert.stub(love.graphics.print).was.called_with('Troy', 1, 1)
    assert.stub(love.graphics.print).was.called_with('Hello hello', 10, 10)
  end)

  it('shows choices', function()
    mock(love, true)
    local g = Game:new(love)

    g:showElement(love, elements.choices { inputs.choice 'a', inputs.choice 'b' })

    -- TODO: Clean before print
    assert.stub(love.graphics.print).was.called_with('a', 1, 30)
  end)
end)
