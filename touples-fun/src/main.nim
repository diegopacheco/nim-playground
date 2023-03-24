import strformat

#
# Nim called Touple but is more like Case Class or Record
#

var person = (name: "John", email: "john@doe.com", typez: "civilian")
echo fmt"person = {person}"
echo fmt"person.name = {person.name}"
