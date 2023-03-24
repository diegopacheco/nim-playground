import strformat

let groceryList = ["eggs", "fruits", "ham", "cheese", "coke", "steak"]
for i, item in groceryList:
    echo fmt"index {i} item {item}"

let primes = [1, 2, 3, 5, 7]
for p in primes:
    echo fmt"it's a prime {p}"
