import std/[re, strformat, strutils]

let text = "the quick brown fox jumps over 123 lazy dogs"

let pattern = re"fox"
if text.contains(pattern):
  echo "found fox"

let numberPattern = re"\d+"
let match = text.find(numberPattern)
if match.isSome:
  echo fmt"found number at: {match.get()}"

let numbers = "abc 123 def 456 ghi 789"
for m in numbers.findAll(re"\d+"):
  echo fmt"number: {m}"

let emailPattern = re"[\w\.-]+@[\w\.-]+"
let emails = "contact: john@test.com or jane@foo.org"
for email in emails.findAll(emailPattern):
  echo fmt"email: {email}"

let replaced = text.replace(re"\d+", "999")
echo fmt"replaced: {replaced}"

let multiReplaced = "hello world".replace(re"(\w+) (\w+)", "$2 $1")
echo fmt"swapped: {multiReplaced}"

let splitText = "one,two;three:four"
let parts = splitText.split(re"[,;:]")
for part in parts:
  echo fmt"part: {part}"
