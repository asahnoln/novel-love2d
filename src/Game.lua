return {
  new = function(self)
    return {
      showElement = function(self, love, element)
        love.graphics.print(element.character.name, 1, 1)
        love.graphics.print(element.text, 10, 10)
      end,
    }
  end,
}
