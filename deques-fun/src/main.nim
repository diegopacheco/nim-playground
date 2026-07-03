import std/[deques, strformat]

var dq = initDeque[int]()
dq.addLast(1)
dq.addLast(2)
dq.addFirst(0)
echo fmt"deque: {dq}"

echo fmt"first: {dq.peekFirst()}"
echo fmt"last: {dq.peekLast()}"

echo fmt"popFirst: {dq.popFirst()}"
echo fmt"popLast: {dq.popLast()}"
echo fmt"after pops: {dq}"

var queue = initDeque[string]()
queue.addLast("task1")
queue.addLast("task2")
queue.addLast("task3")
echo fmt"queue len: {queue.len}"

while queue.len > 0:
  echo fmt"processing: {queue.popFirst()}"

var stack = initDeque[int]()
for i in 1..3:
  stack.addLast(i)
while stack.len > 0:
  echo fmt"stack pop: {stack.popLast()}"
