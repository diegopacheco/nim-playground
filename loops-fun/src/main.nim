import strformat

for i in 1 .. 10:
    echo i

for n in countdown(10, 5):
    echo fmt"counting down: {n}"

let word = "nim_programing_lang"
for c in word:
    echo fmt"char is: {c}"

# immutable because of let
let word2 = "cool"
for i, c in word2:
    echo fmt"{i} index char is: {c}"

# mmutable because of let
var x = 0
while x<10:
    inc x
    if x > 8:
        echo x