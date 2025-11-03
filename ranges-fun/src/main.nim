import std/strformat

for i in 1..5:
  echo fmt"range 1..5: {i}"

for i in 1..<5:
  echo fmt"range 1..<5: {i}"

type
  Digit = range[0..9]
  UppercaseLetter = range['A'..'Z']
  Percentage = range[0.0..100.0]

var d: Digit = 7
echo fmt"digit: {d}"

var letter: UppercaseLetter = 'M'
echo fmt"uppercase: {letter}"

var percent: Percentage = 75.5
echo fmt"percentage: {percent}"

type
  Color = enum
    Red, Green, Blue

for c in Red..Blue:
  echo fmt"color: {c}"

type
  SmallInt = range[1..100]

proc validate(n: SmallInt): bool =
  result = true

echo fmt"validate 50: {validate(50)}"

let arr = [10, 20, 30, 40, 50]
echo fmt"slice [1..3]: {arr[1..3]}"
echo fmt"slice [0..<3]: {arr[0..<3]}"

type
  Month = range[1..12]

var m: Month = 6
echo fmt"month: {m}"
