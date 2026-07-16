import std/strformat

proc sum(nums: varargs[int]): int =
  for n in nums:
    result += n

echo fmt"sum(1, 2, 3): {sum(1, 2, 3)}"
echo fmt"sum(10, 20, 30, 40): {sum(10, 20, 30, 40)}"
echo fmt"sum(): {sum()}"

proc greet(names: varargs[string]) =
  for name in names:
    echo fmt"hello {name}"

greet("Alice", "Bob", "Carol")

proc concatAll(parts: varargs[string]): string =
  for p in parts:
    result.add(p)

let joined = concatAll("a", "b", "c")
echo fmt"concat: {joined}"

proc printAll(args: varargs[string, `$`]) =
  for a in args:
    echo fmt"value: {a}"

printAll(1, 2.5, "three", true)

let numbers = @[5, 10, 15]
echo fmt"sum from seq: {sum(numbers)}"
