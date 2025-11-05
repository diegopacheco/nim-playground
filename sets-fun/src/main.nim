import std/[sets, strformat]

var numbersSet = initHashSet[int]()
numbersSet.incl(1)
numbersSet.incl(2)
numbersSet.incl(3)
numbersSet.incl(2)
echo fmt"numbersSet: {numbersSet}"

var setA = [1, 2, 3, 4, 5].toHashSet
var setB = [4, 5, 6, 7, 8].toHashSet

echo fmt"setA: {setA}"
echo fmt"setB: {setB}"
echo fmt"union: {setA + setB}"
echo fmt"intersection: {setA * setB}"
echo fmt"difference: {setA - setB}"

var setC = [1, 2].toHashSet
echo fmt"setC: {setC}"
echo fmt"setC is subset of setA: {setC <= setA}"

var orderedSet = initOrderedSet[string]()
orderedSet.incl("apple")
orderedSet.incl("banana")
orderedSet.incl("cherry")
echo fmt"orderedSet: {orderedSet}"

for item in orderedSet:
    echo fmt"item: {item}"
