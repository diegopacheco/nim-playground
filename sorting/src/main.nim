import algorithm

proc myComparator(x, y: int): int =
  cmp(x,y)

var numbers:array[10, int]
numbers[0]=10
numbers[1]=3
numbers[2]=23
numbers[3]=2
numbers[4]=15
numbers[5]=30
numbers[6]=20
numbers[7]=6
numbers[8]=8
numbers[9]=1

numbers.sort(myComparator)
for n in numbers:
    echo n