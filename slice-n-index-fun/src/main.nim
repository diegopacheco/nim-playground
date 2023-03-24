
import strformat
let abc = ['a', 'b', 'c', 'd', 'e']

echo fmt"first {abc[0]}"
echo fmt"last {abc[^1]}"
echo fmt"slice {abc[1..3]}"

var word = "super cool game"
word[6..9] = "dope"
echo fmt"best replace ever: [{word}]"