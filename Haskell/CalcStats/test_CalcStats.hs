module Test_CalcStats where

import Test.HUnit
import CalcStats

testList = [6,9,15,(-2),92,11]
average_answer = 21.833333333333332

test_minimum_value_returns_negative_two =
  TestCase (assertEqual "The minimum value in the list is -2" (-2) (minimumValue testList))

test_maximum_value_returns_ninety_two =
  TestCase (assertEqual "The maximum value in the list is 92" 92 (maximumValue testList))

test_number_of_elements_is_six =
  TestCase (assertEqual "Number of elements is 6" 6 (numberOfElements testList))

test_average_is_correct =
  TestCase (assertEqual "Average is correct" average_answer (average testList))

tests = TestList [test_minimum_value_returns_negative_two,
                  test_maximum_value_returns_ninety_two,
                  test_number_of_elements_is_six,
                  test_average_is_correct]

main = do runTestTT tests
