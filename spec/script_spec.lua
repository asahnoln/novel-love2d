local Script = require 'src.Script'
local Character = require 'src.Character'
local inputs = require 'src.inputs'
local elements = require 'src.elements'

describe('script', function()
  it('has elements', function()
    local s = Script:new()
    local ch = Character:new 'Andy'
    local wantLine = elements.line(ch, 'Hey!')

    s:add(wantLine)
    assert.is_not_nil(s:part(1))
    assert.are_equal(s:part(1), wantLine)
  end)

  it('should differ from other script', function()
    local s1 = Script:new()
    local s2 = Script:new()

    local l1 = elements.line({}, 'Line1')
    local l2 = elements.line({}, 'Line2')

    s1:add(l1)
    s2:add(l2)

    assert.are_not_equal(s1, s2)
    assert.are_not_equal(s1:part(1), s2:part(1))
  end)

  it('has lines changed due to input', function()
    local s = Script:new()

    local wantLine = elements.line({}, 'I appeared!')
    local ch = inputs.choice 'Appear!'

    s:add(elements.cond(ch, wantLine))
    s:add(elements.cond(inputs.choice 'Never chosen', elements.line({}, 'I... do not appear')))

    s:input(ch)

    assert.are_equal(s:part(1), wantLine)
    assert.are_equal(s:part(2), elements.skippedLine)
  end)
end)
