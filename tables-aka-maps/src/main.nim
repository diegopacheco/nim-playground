import tables

var prices = initTable[string, float]()
prices["apple"] = 7.5
prices["kiwi"] = 6.0
prices["banana"] = 4.5
echo prices
echo "kiwi? ", prices.hasKey("kiwi")

for fruit, price in prices:
    echo fruit, " costs ", price

var numbers = {1: "one", 2: "two", 3: "three"}.toTable
echo numbers