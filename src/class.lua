return {
  -- Creates a new instance of a table class
  ---@generic T
  ---@param parent T
  ---@param data? T
  ---@return T
  new = function(parent, data)
    local o = data or {}
    setmetatable(o, parent)
    parent.__index = parent
    return o
  end,
}
