import std/[macros, strformat]

template repeat(n: int, body: untyped) =
    for i in 1..n:
        body

repeat(3):
    echo "hello"

template debug(varname: untyped): untyped =
    echo fmt"{astToStr(varname)} = {varname}"

var x = 42
debug(x)

var y = "test"
debug(y)

macro times(n: static[int], body: untyped): untyped =
    result = newStmtList()
    for i in 0..<n:
        result.add(body)

times(5):
    echo "macro generated"

macro log(msg: string): untyped =
    result = quote do:
        echo "[LOG] ", `msg`

log("this is a log message")
