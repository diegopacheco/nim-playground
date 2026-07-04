import std/[strformat, strutils]

type
  Direction = enum
    North, East, South, West

  Priority = enum
    Low = 1, Medium = 5, High = 10

for d in Direction:
  echo fmt"direction: {d} ord: {ord(d)}"

echo fmt"high priority value: {ord(High)}"

let parsed = parseEnum[Direction]("South")
echo fmt"parsed: {parsed} ord: {ord(parsed)}"

echo fmt"first: {low(Direction)}"
echo fmt"last: {high(Direction)}"

echo fmt"after North: {succ(North)}"
echo fmt"before West: {pred(West)}"

echo fmt"is East > North: {East > North}"

type
  Status = enum
    stActive = "active", stClosed = "closed"

echo fmt"status string: {stActive}"
echo fmt"medium priority: {Medium}"
