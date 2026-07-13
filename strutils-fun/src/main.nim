import std/[strutils, strformat]

let text = "  Hello, Nim World  "
echo fmt"stripped: [{text.strip()}]"
echo fmt"upper: {text.toUpperAscii()}"
echo fmt"lower: {text.toLowerAscii()}"

let csv = "apple,banana,cherry"
let parts = csv.split(",")
echo fmt"split: {parts}"
echo "joined: ", parts.join(" | ")
echo "starts with apple: ", csv.startsWith("apple")
echo "contains banana: ", csv.contains("banana")

let phrase = "nim is fun"
echo "replaced: ", phrase.replace("fun", "great")
echo "capitalized: ", phrase.capitalizeAscii()
echo "repeated: ", "ab".repeat(3)
echo "count l: ", "hello".count('l')

let num = "42"
echo fmt"parsed + 8: {num.parseInt() + 8}"
echo "aligned: [", "7".align(5), "]"
echo "multiReplace: ", "a-b-c".multiReplace(("-", ":"))
