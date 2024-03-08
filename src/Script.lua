local elements = require 'src.elements'
local class = require 'src.class'

local Script = {}

function Script:new()
  return class.new(self, {
    els = {},
    choices = {},
  })
end

function Script:add(el)
  table.insert(self.els, el)
end

function Script:input(ch)
  table.insert(self.choices, ch)
end

function Script:part(p)
  if p < 1 or p > #self.els then
    return elements.theEnd
  end

  return elements.resolve(self.els[p], self.choices)
end

return Script
