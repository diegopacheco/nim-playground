import std/[sugar, tables, sets, sequtils, strutils]

let variable0 = collect(newSeq):
  for item in @[-9, 1, 42, 0, -1, 9]:
    item * 2

assert variable0 == @[-18, 2, 84, 0, -2, 18]
echo variable0

let variable1 = collect(initTable):
  for key, value in @[0, 5, 9]:
    {key: value div 2}
assert variable1 == {0: 0, 1: 2, 2: 4}.toTable
echo variable1

let variable2 = collect(initHashSet):
  for item in @[-9, 1, 42, 0, -1, 9]:
    {item + item}
assert variable2 == [2, 18, 84, 0, -18, -2].toHashSet
echo variable2

assert toSeq(1..15).mapIt(
    if it mod 15 == 0:  "FizzBuzz"
    elif it mod 5 == 0: "Buzz"
    elif it mod 3 == 0: "Fizz"
    else: $it
  ).join(" ").strip == "1 2 Fizz 4 Buzz Fizz 7 8 Fizz Buzz 11 Fizz 13 14 FizzBuzz"