import std/[math, strformat]

echo fmt"sqrt(16): {sqrt(16.0)}"
echo fmt"pow(2, 10): {pow(2.0, 10.0)}"
echo fmt"floor(3.7): {floor(3.7)}"
echo fmt"ceil(3.2): {ceil(3.2)}"
echo fmt"round(3.567, 2): {round(3.567, 2)}"
echo fmt"abs(-5): {abs(-5)}"

echo fmt"gcd(48, 36): {gcd(48, 36)}"
echo fmt"lcm(4, 6): {lcm(4, 6)}"

echo fmt"pi: {PI:.5f}"
echo fmt"e: {E:.5f}"

echo fmt"sin(pi/2): {sin(PI / 2)}"
echo fmt"cos(0): {cos(0.0)}"

echo fmt"log10(1000): {log10(1000.0)}"
echo fmt"ln(e): {ln(E)}"

echo fmt"factorial(5): {fac(5)}"
echo fmt"2^8: {2 ^ 8}"

echo fmt"trunc(9.9): {trunc(9.9)}"
echo fmt"hypot(3, 4): {hypot(3.0, 4.0)}"
echo fmt"isPowerOfTwo(64): {isPowerOfTwo(64)}"
echo fmt"nextPowerOfTwo(100): {nextPowerOfTwo(100)}"
