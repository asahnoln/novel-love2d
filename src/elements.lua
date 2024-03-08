local skippedLine = { 'skippedLine' }

return {
  line = function(character, text)
    return {
      character = character,
      text = text,
    }
  end,

  -- cond is an if function for a conditional element
  cond = function(ch, line)
    return {
      choice = ch,
      element = line,
    }
  end,

  skippedLine = skippedLine,

  choices = function(chs)
    return chs
  end,

  theEnd = { 'theEnd' },

  resolve = function(el, choices)
    if el.choice then
      for i = 1, #choices do
        if el.choice == choices[i] then
          return el.element
        end

        return skippedLine
      end
    end

    return el
  end,
}
