import std/[complex, strformat]

let a = complex(2.0, 3.0)
let b = complex(1.0, -1.0)

echo fmt"a: {a}"
echo fmt"b: {b}"
echo fmt"a + b: {a + b}"
echo fmt"a - b: {a - b}"
echo fmt"a * b: {a * b}"

echo fmt"abs(a): {abs(a)}"
echo fmt"conjugate(a): {conjugate(a)}"

let i = complex(0.0, 1.0)
echo fmt"i squared: {i * i}"

echo fmt"real part: {a.re}"
echo fmt"imag part: {a.im}"

let polar = complex(3.0, 4.0)
echo fmt"magnitude: {abs(polar)}"
echo fmt"phase: {phase(polar)}"

let scaled = a * complex(2.0, 0.0)
echo fmt"scaled: {scaled}"

echo fmt"sqrt of -1: {sqrt(complex(-1.0, 0.0))}"
