type Person = object
    name: string
    age: int

let alice = Person(name: "Alice", age: 25)
echo alice
echo alice.name, " is ", alice.age, " years old."

proc newPerson(name: string, age: int): Person =
    Person(name: name, age: age)
let joe = newPerson("Joe", 24)
echo joe