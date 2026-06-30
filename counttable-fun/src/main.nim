import std/[tables, strformat, strutils]

let text = "the cat sat on the mat the cat ran"
var counts = initCountTable[string]()
for word in text.split(" "):
  counts.inc(word)

echo fmt"counts: {counts}"
echo "the count: ", counts["the"]
counts.sort()
echo fmt"largest: {counts.largest()}"

var letters = initCountTable[char]()
for c in "mississippi":
  letters.inc(c)
echo fmt"letter counts: {letters}"
echo "s count: ", letters['s']

var votes = toCountTable("aabbbcccc")
echo fmt"most common: {votes.largest().key}"

var scores = initCountTable[string]()
scores.inc("alice", 10)
scores.inc("alice", 5)
scores.inc("bob", 3)
echo "alice score: ", scores["alice"]
