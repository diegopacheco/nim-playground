import std/[options, strformat, tables]

var maybeValue: Option[int] = some(42)
echo fmt"isSome: {maybeValue.isSome}"
echo fmt"value: {maybeValue.get()}"

var noValue: Option[int] = none(int)
echo fmt"isNone: {noValue.isNone}"

if maybeValue.isSome:
  echo fmt"has value: {maybeValue.get()}"

let defaultValue = noValue.get(999)
echo fmt"default value: {defaultValue}"

proc divide(a, b: int): Option[float] =
  if b == 0:
    return none(float)
  else:
    return some(a / b)

let result1 = divide(10, 2)
if result1.isSome:
  echo fmt"division result: {result1.get()}"

let result2 = divide(10, 0)
if result2.isNone:
  echo "division by zero"

var table = initTable[string, int]()
table["key1"] = 100

let lookup1 = table.getOrDefault("key1")
echo fmt"lookup key1: {lookup1}"

let lookup2 = table.getOrDefault("key2", -1)
echo fmt"lookup key2: {lookup2}"

proc findUser(id: int): Option[string] =
  if id == 1:
    return some("Alice")
  elif id == 2:
    return some("Bob")
  else:
    return none(string)

let user1 = findUser(1)
echo fmt"user1: {user1.get()}"

let user3 = findUser(3)
echo fmt"user3 exists: {user3.isSome}"
