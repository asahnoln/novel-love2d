return {
  line = function(character, text)
    return {
      text = text,
    }
  end,
  -- cond is an if function for a conditional element
  cond = function(ch, line)
    return {
      choice = ch,
      line = line,
    }
  end,
  skippedLine = {},
}
