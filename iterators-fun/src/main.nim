import std/strformat

iterator countup(a, b: int): int =
  var i = a
  while i <= b:
    yield i
    inc i

for i in countup(1, 5):
  echo fmt"countup: {i}"

iterator fibonacci(max: int): int =
  var a = 0
  var b = 1
  while a <= max:
    yield a
    let temp = a
    a = b
    b = temp + b

for n in fibonacci(100):
  echo fmt"fib: {n}"

iterator items(s: string): char {.inline.} =
  for i in 0..<s.len:
    yield s[i]

for c in items("hello"):
  echo fmt"char: {c}"

iterator evens(n: int): int {.closure.} =
  var i = 0
  while i <= n:
    if i mod 2 == 0:
      yield i
    inc i

var evenIter = evens
for e in evenIter(10):
  echo fmt"even: {e}"
