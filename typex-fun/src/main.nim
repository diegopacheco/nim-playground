type People = tuple
  name: string
  year: int
  
var people: seq[People]
people.add(("John",  2000))
people.add(("Marie", 2005))
people.add(("Jane",  2010))

for p in people:
    echo p