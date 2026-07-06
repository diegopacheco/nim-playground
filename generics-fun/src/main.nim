import std/strformat

proc maxOf[T](a, b: T): T =
  if a > b: a else: b

echo fmt"maxOf ints: {maxOf(3, 7)}"
echo fmt"maxOf floats: {maxOf(2.5, 1.5)}"

type
  Stack[T] = object
    items: seq[T]

proc push[T](s: var Stack[T], item: T) =
  s.items.add(item)

proc pop[T](s: var Stack[T]): T =
  result = s.items[^1]
  s.items.setLen(s.items.len - 1)

var intStack: Stack[int]
intStack.push(1)
intStack.push(2)
intStack.push(3)
echo fmt"popped: {intStack.pop()}"
echo fmt"remaining: {intStack.items}"

var strStack: Stack[string]
strStack.push("a")
strStack.push("b")
echo fmt"popped: {strStack.pop()}"

proc firstOf[T](items: seq[T]): T = items[0]
echo fmt"first int: {firstOf(@[10, 20, 30])}"
