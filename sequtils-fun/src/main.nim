import std/[sequtils, strformat]

let nums = @[1, 2, 3, 4, 5, 6]

let doubled = nums.mapIt(it * 2)
echo fmt"doubled: {doubled}"

let evens = nums.filterIt(it mod 2 == 0)
echo fmt"evens: {evens}"

let total = nums.foldl(a + b)
echo fmt"sum: {total}"

echo fmt"all positive: {nums.allIt(it > 0)}"
echo fmt"any over 5: {nums.anyIt(it > 5)}"

let squares = nums.mapIt(it * it)
echo fmt"squares: {squares}"

let combined = concat(@[1, 2], @[3, 4])
echo fmt"concat: {combined}"

echo fmt"count evens: {nums.countIt(it mod 2 == 0)}"

let deduped = @[1, 1, 2, 3, 3].deduplicate()
echo fmt"deduped: {deduped}"

let zipped = zip(@[1, 2, 3], @["a", "b", "c"])
echo fmt"zipped: {zipped}"
