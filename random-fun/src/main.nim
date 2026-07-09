import std/[random, strformat]

randomize(42)

echo fmt"rand(100): {rand(100)}"
echo fmt"rand(1.0): {rand(1.0)}"
echo fmt"rand(10..20): {rand(10..20)}"

let dice = rand(1..6)
echo fmt"dice roll: {dice}"

let colors = @["red", "green", "blue", "yellow"]
echo fmt"random color: {sample(colors)}"

var deck = @[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
deck.shuffle()
echo fmt"shuffled: {deck}"

var coins: array[5, bool]
for i in 0..<coins.len:
  coins[i] = rand(1.0) > 0.5
echo fmt"coin flips: {coins}"

var rng = initRand(123)
echo fmt"seeded rand: {rng.rand(1000)}"

let pick = sample(@[10, 20, 30, 40])
echo fmt"sampled: {pick}"
