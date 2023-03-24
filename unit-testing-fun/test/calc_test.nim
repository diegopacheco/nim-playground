import unittest
import ../src/calc

suite "Calculator test suite in nim":
  echo "suite setup: run once before the tests"
 
  setup:
    echo "run before each test"
  
  teardown:
    echo "run after each test"
  
  test "essential truths":
    # give up and stop if this fails
    require(true)
  
  test "2+3 should be 5":
    check(plus(2,3) == 5)
