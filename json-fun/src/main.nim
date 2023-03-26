import json

type
  Element = object
    name: string
    atomicNumber: int

let jsonObject = parseJson("""{"name": "Carbon", "atomicNumber": 6}""")
let element = to(jsonObject, Element)
echo element.name
echo element.atomicNumber