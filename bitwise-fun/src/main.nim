import std/strformat

var a = 0b1010
var b = 0b1100

echo fmt"a = {a:08b} ({a})"
echo fmt"b = {b:08b} ({b})"

echo fmt"a AND b = {(a and b):08b} ({a and b})"
echo fmt"a OR b = {(a or b):08b} ({a or b})"
echo fmt"a XOR b = {(a xor b):08b} ({a xor b})"
echo fmt"NOT a = {(not a):08b} ({not a})"

var x = 0b0001
echo fmt"x = {x:08b} ({x})"
echo fmt"x << 2 = {(x shl 2):08b} ({x shl 2})"
echo fmt"x >> 1 = {(x shr 1):08b} ({x shr 1})"

var num = 16
echo fmt"num << 1 = {num shl 1}"
echo fmt"num >> 2 = {num shr 2}"

echo fmt"0xFF in hex = {0xFF}"
echo fmt"0o77 in oct = {0o77}"
echo fmt"0b1111 in bin = {0b1111}"

var hex = 0xABCD
echo fmt"hex {hex:04X} = {hex}"

type
  Permissions = distinct int

const
  Read: Permissions = 0b0001.Permissions
  Write: Permissions = 0b0010.Permissions
  Execute: Permissions = 0b0100.Permissions

proc `or`(a, b: Permissions): Permissions {.borrow.}
proc `and`(a, b: Permissions): Permissions {.borrow.}

var perms = Read or Write
echo fmt"permissions: {perms.int:04b}"

var mask = 0b00001111
var value = 0b10101010
echo fmt"value AND mask = {(value and mask):08b}"
