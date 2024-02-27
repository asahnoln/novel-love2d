describe('game', function()
  -- FIX: require real love
  local love = {
    graphics = {
      print = function() end,
    },
  }

  local Game = require 'src.Game'
  local elements = require 'src.elements'
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
end)
