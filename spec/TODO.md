# TODO

## Script
- [x] Script has elements
- [x] els of two scripts should be different
- [x] script.input(userInput) -> changes line in the script
- [x] choices script element
- [ ] setting element
- [ ] Problematic choices element - basically takes anything and returns it
- [ ] cond with more complex condition
- [ ] cond line attribute should be changed to reflect any element
- [x] s:part out of bound error -> should return elements.end
- [ ] should story really use OOP syntax (:)
- [ ] Refactor into OOP

```fountain
ANDY
Hey! (Line)

I stopped. (Action)

I
Oh hi, Andy.

ANDY drops a ball.

ANDY (Character)
(tense) (mood)
I didnat hit her, I did naaaat (text/line)
(calm)
Anyway, how's your sex life?
```

## Game
- [ ] Love2d any input makes story keep going
- [ ] We see character's name
- [ ] We see character's line
- [ ] We see choices buttons
- [ ] We don't see skippedLines
- [ ] We can click a choice and continue
- [ ] We can continue the game

When we see something it means that love2d takes it to graphics
When we click something it means that love2d registers input at the element and something happens
Continue means we make an input and it continues the game - we see next script element
