local elements = require 'src.elements'
return {
  new = function()
    local els = {}
    local choices = {}
    return {
      add = function(self, el)
        table.insert(els, el)
      end,

      part = function(self, p)
        if p < 1 or p > #els then
          return elements.theEnd
        end

        if els[p].choice then
          for i = 1, #choices do
            if choices[i] == els[p].choice then
              return els[p].element
            else
              return elements.skippedLine
            end
          end
        end

        return els[p]
      end,

      input = function(self, ch)
        table.insert(choices, ch)
      end,
    }
  end,
}
