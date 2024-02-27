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

  skippedLine = { 'skippedLine' },

  choices = function(chs)
    return chs
  end,

  theEnd = { 'theEnd' },
}
