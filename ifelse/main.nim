var conditional = 42

if conditional < 0:
  echo "conditional < 0"
elif conditional > 0:
  echo "conditional > 0"
else:
  echo "conditional == 0"

var ternary = if conditional == 42: true else: false
echo ternary

var another =
  if conditional == 0:
    "zero"
  elif conditional mod 2 == 0:
    "even"
  else:
    "odd"
echo another

# Case switch.
var letter = 'c'
case letter
of 'a':
  echo "letter is 'a'"
of 'b', 'c':
  echo "letter is 'b' or 'c'"
of 'd'..'h':
  echo "letter is between 'd' and 'h'"
else:
  echo "letter is another character"