import std/[sugar, strformat, sequtils, tables]

let square = (x: int) => x * x
echo fmt"square(5): {square(5)}"

let add = (a, b: int) => a + b
echo fmt"add(3, 4): {add(3, 4)}"

let nums = @[1, 2, 3, 4, 5]
let evens = collect(newSeq):
  for n in nums:
    if n mod 2 == 0:
      n
echo fmt"evens: {evens}"

let squares = collect:
  for n in nums:
    n * n
echo fmt"squares: {squares}"

let squareTable = collect(initTable):
  for n in nums:
    {n: n * n}
echo fmt"table: {squareTable}"

dump(add(10, 20))

let mapped = nums.map(x => x + 100)
echo fmt"mapped: {mapped}"
