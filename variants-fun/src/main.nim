import std/strformat

type
  ShapeKind = enum
    Circle, Rectangle, Triangle

  Shape = object
    case kind: ShapeKind
    of Circle:
      radius: float
    of Rectangle:
      width: float
      height: float
    of Triangle:
      base: float
      triangleHeight: float

proc area(s: Shape): float =
  case s.kind
  of Circle:
    result = 3.14 * s.radius * s.radius
  of Rectangle:
    result = s.width * s.height
  of Triangle:
    result = 0.5 * s.base * s.triangleHeight

var circle = Shape(kind: Circle, radius: 5.0)
var rect = Shape(kind: Rectangle, width: 10.0, height: 20.0)
var triangle = Shape(kind: Triangle, base: 10.0, triangleHeight: 15.0)

echo fmt"circle area: {circle.area()}"
echo fmt"rectangle area: {rect.area()}"
echo fmt"triangle area: {triangle.area()}"

type
  NodeKind = enum
    Leaf, Branch

  Node = object
    case kind: NodeKind
    of Leaf:
      value: int
    of Branch:
      left: ref Node
      right: ref Node

var leaf = Node(kind: Leaf, value: 42)
echo fmt"leaf value: {leaf.value}"
