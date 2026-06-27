import std/strformat

type
  Permission = enum
    Read, Write, Execute, Delete

var perms: set[Permission] = {Read, Write}
echo fmt"perms: {perms}"
perms.incl(Execute)
perms.excl(Write)
echo fmt"after changes: {perms}"
echo fmt"has Read: {Read in perms}"
echo fmt"count: {perms.card}"

let vowels: set[char] = {'a', 'e', 'i', 'o', 'u'}
echo fmt"is e vowel: {'e' in vowels}"

let word = "education"
var found: set[char]
for c in word:
  if c in vowels:
    found.incl(c)
echo fmt"vowels found: {found}"

let a = {1, 2, 3, 4}
let b = {3, 4, 5, 6}
echo fmt"union: {a + b}"
echo fmt"intersection: {a * b}"
echo fmt"difference: {a - b}"

let digits = {'0'..'9'}
echo fmt"is 5 a digit char: {'5' in digits}"
