import std/[asyncdispatch, asyncfile, strformat]

proc writeFileAsync(filename: string, content: string) {.async.} =
    let file = openAsync(filename, fmWrite)
    await file.write(content)
    file.close()
    echo fmt"wrote to {filename}"

proc readFileAsync(filename: string): Future[string] {.async.} =
    let file = openAsync(filename, fmRead)
    result = await file.readAll()
    file.close()
    echo fmt"read from {filename}"

proc processFiles() {.async.} =
    await writeFileAsync("/tmp/test1.txt", "first file")
    await writeFileAsync("/tmp/test2.txt", "second file")

    let content1 = await readFileAsync("/tmp/test1.txt")
    let content2 = await readFileAsync("/tmp/test2.txt")

    echo fmt"content1: {content1}"
    echo fmt"content2: {content2}"

waitFor processFiles()
