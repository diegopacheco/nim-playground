import std/[rationals, strformat]

let half = 1 // 2
let third = 1 // 3

echo fmt"half: {half}"
echo fmt"third: {third}"
echo fmt"half + third: {half + third}"
echo fmt"half - third: {half - third}"
echo fmt"half * third: {half * third}"
echo fmt"half / third: {half / third}"

echo fmt"as float: {half.toFloat}"
echo fmt"numerator of 3/4: {(3 // 4).num}"
echo fmt"denominator of 3/4: {(3 // 4).den}"

let mixed = 7 // 2
echo fmt"7/2 as float: {mixed.toFloat}"

let added = (1 // 4) + (1 // 4)
echo fmt"1/4 + 1/4: {added}"

echo fmt"reciprocal of 2/5: {reciprocal(2 // 5)}"
echo fmt"abs of -3/7: {abs(-3 // 7)}"

let cmp = (2 // 3) < (3 // 4)
echo fmt"2/3 < 3/4: {cmp}"
