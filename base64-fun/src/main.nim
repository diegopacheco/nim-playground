import std/[base64, strformat]

let original = "Hello, Nim!"
let encoded = encode(original)
echo fmt"original: {original}"
echo fmt"encoded: {encoded}"

let decoded = decode(encoded)
echo fmt"decoded: {decoded}"

let bytes = @[byte 72, 105, 33]
echo fmt"bytes encoded: {encode(bytes)}"

let data = "user:password"
let auth = encode(data)
echo fmt"basic auth: {auth}"
echo fmt"decoded auth: {decode(auth)}"

let safe = encode("subjects?_d", safe = true)
echo fmt"url safe: {safe}"

let roundtrip = decode(encode("roundtrip test"))
echo fmt"roundtrip: {roundtrip}"

let emoji = "café"
echo fmt"unicode encoded: {encode(emoji)}"
echo fmt"unicode decoded: {decode(encode(emoji))}"
