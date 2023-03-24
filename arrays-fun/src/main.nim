import strformat

var pagesArray: array[4, int] = [0, 2, 4, 8]
for page in pagesArray:
    echo fmt"page {page}"

var colorsArray: array[3, string] = ["RED", "BLUE", "GREEN"]
for color in colorsArray:
    echo fmt"color {color}"    