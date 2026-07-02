import std/strformat

proc processResource() =
  echo "open resource"
  defer: echo "close resource"
  echo "use resource"

processResource()

proc multipleDefers() =
  defer: echo "defer 1"
  defer: echo "defer 2"
  defer: echo "defer 3"
  echo "body runs first"

multipleDefers()

proc withFile() =
  echo "acquiring file"
  defer: echo "releasing file"
  echo "writing data"
  echo "reading data"

withFile()

proc countWithCleanup(n: int) =
  defer: echo fmt"finished counting to {n}"
  for i in 1..n:
    echo fmt"count: {i}"

countWithCleanup(3)
