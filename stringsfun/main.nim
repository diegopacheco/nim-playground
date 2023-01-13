import std/[strutils, strscans]

assert "con" & "cat" == "concat"
assert "    a    ".strip == "a"
assert "42".parseInt == 42
assert "3.14".parseFloat == 3.14
assert "0x666".parseHexInt == 1638
assert "TrUe".parseBool == true
assert "0o777".parseOctInt == 511
assert "a".repeat(9) == "aaaaaaaaa"
assert "abc".startsWith("ab")
assert "abc".endsWith("bc")
assert ["a", "b", "c"].join == "abc"
assert "abcd".find("c") == 2
assert "a x a y a z".count("a") == 3
assert "A__B__C".normalize == "abc"
assert "a,b".split(",") == @["a", "b"]
assert "a".center(5) == "  a  "
assert "a".indent(4) == "    a"
assert "    a".unindent(4) == "a"

for word in tokenize("This is an example"):
  echo word

let (ok, year, month, day) = scanTuple("1000-01-01", "$i-$i-$i")
if ok:
  assert year == 1000
  assert month == 1
  assert day == 1