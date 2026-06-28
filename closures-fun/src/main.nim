import std/strformat

proc makeCounter(): proc(): int =
  var count = 0
  result = proc(): int =
    inc count
    count

let counter = makeCounter()
echo fmt"count: {counter()}"
echo fmt"count: {counter()}"
echo fmt"count: {counter()}"

proc makeAdder(x: int): proc(y: int): int =
  result = proc(y: int): int = x + y

let add5 = makeAdder(5)
echo fmt"add5(10): {add5(10)}"
echo fmt"add5(20): {add5(20)}"

proc makeMultiplier(factor: int): proc(n: int): int =
  proc(n: int): int = n * factor

let triple = makeMultiplier(3)
echo fmt"triple(7): {triple(7)}"

var accumulator = 0
let accumulate = proc(n: int) =
  accumulator += n
accumulate(10)
accumulate(25)
echo fmt"accumulated: {accumulator}"
