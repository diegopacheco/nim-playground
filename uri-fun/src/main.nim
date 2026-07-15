import std/[uri, strformat]

let url = parseUri("https://user@example.com:8080/path/page?query=value&x=1#section")

echo fmt"scheme: {url.scheme}"
echo fmt"hostname: {url.hostname}"
echo fmt"port: {url.port}"
echo fmt"path: {url.path}"
echo fmt"query: {url.query}"
echo fmt"anchor: {url.anchor}"
echo fmt"username: {url.username}"

let encoded = encodeUrl("hello world & friends")
echo fmt"encoded: {encoded}"

let decoded = decodeUrl(encoded)
echo fmt"decoded: {decoded}"

let base = parseUri("https://api.example.com/v1/")
let combined = combine(base, parseUri("users/42"))
echo fmt"combined: {combined}"

var built = initUri()
built.scheme = "https"
built.hostname = "test.com"
built.path = "/home"
echo fmt"built: {built}"

echo fmt"is absolute: {url.isAbsolute()}"
