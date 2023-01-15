import std/heapqueue
var heap = [8, 2].toHeapQueue
heap.push(5)

assert heap[0] == 2
assert heap.pop() == 2
assert heap[0] == 5

echo(heap)
