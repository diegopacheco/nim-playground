import std/[strformat, strutils]

proc divide(a, b: int): int =
  if b == 0:
    raise newException(ValueError, "cannot divide by zero")
  result = a div b

try:
  echo fmt"10 / 2 = {divide(10, 2)}"
  echo fmt"10 / 0 = {divide(10, 0)}"
except ValueError as e:
  echo fmt"caught: {e.msg}"

type
  CustomError = object of CatchableError

proc risky(n: int) =
  if n < 0:
    raise newException(CustomError, "negative not allowed")
  echo fmt"processed: {n}"

try:
  risky(5)
  risky(-1)
except CustomError as e:
  echo fmt"custom error: {e.msg}"
finally:
  echo "cleanup always runs"

try:
  discard parseInt("not a number")
except ValueError:
  echo "invalid integer format"
