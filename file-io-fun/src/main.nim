import std/[os, strformat, strutils]

let filename = "/tmp/test.txt"
writeFile(filename, "line one\nline two\nline three")
echo fmt"wrote to {filename}"

let content = readFile(filename)
echo fmt"read content: {content}"

let lines = readLines(filename)
for line in lines:
  echo fmt"line: {line}"

let csvFile = "/tmp/data.csv"
let csvContent = "name,age,city\nJohn,30,NYC\nJane,25,LA\nBob,35,SF"
writeFile(csvFile, csvContent)

for line in lines(csvFile):
  let fields = line.split(",")
  echo fmt"fields: {fields}"

if fileExists(csvFile):
  echo fmt"{csvFile} exists"

let dir = "/tmp/testdir"
if not dirExists(dir):
  createDir(dir)
  echo fmt"created {dir}"

writeFile(dir / "file1.txt", "content1")
writeFile(dir / "file2.txt", "content2")

for kind, path in walkDir(dir):
  echo fmt"found: {path}"

removeFile(filename)
removeFile(csvFile)
removeDir(dir)
echo "cleanup done"
