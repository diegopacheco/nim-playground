import strformat
#
# Sequences lenght dont need to be know at compile time
# Sequences can change during the runtime
#

var 
    s: seq[int] = @[]  # empty sequence
    f = @["abc","def"] # non-empty sequence with 2 strings

echo s
echo f

f.add("xyz")
echo fmt"{f} len is {f.len}"