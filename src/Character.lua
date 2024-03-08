local class = require 'src.class'
local Character = {}

function Character:new(name)
  return class.new(self, { name = name })
end

return Character
