local inputs = require 'src.inputs'
describe('script element', function()
  local elements = require 'src.elements'

  it('can be resolved to itself if it is not a choice', function()
    assert.are.equal(elements.skippedLine, elements.resolve(elements.skippedLine))

    local want = elements.line({}, 'no')
    assert.are.equal(want, elements.resolve(want))
  end)

  it('can be resolved if it is a choice', function()
    local ch = { 'choice' }
    local line = elements.line({}, 'yes')

    local condEl = elements.cond(ch, line)
    assert.are.equal(line, elements.resolve(condEl, { ch }))

    condEl = elements.cond({ 'was not done' }, line)
    assert.are.equal(elements.skippedLine, elements.resolve(condEl, { ch }))
  end)
end)
