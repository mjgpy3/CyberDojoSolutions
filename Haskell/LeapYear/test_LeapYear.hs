module Test_LeapYear where

import Test.HUnit
import LeapYear

that_2001_is_not_a_leap_year_test = TestCase (assertEqual "2001 is a common year" (isLeapYear 2001) False)
that_1996_is_a_leap_year_test = TestCase (assertEqual "1996 is a leap year" (isLeapYear 1996) True)
that_1900_is_not_a_leap_year_test = TestCase (assertEqual "1900 is not a leap year" (isLeapYear 1900) False)
that_2000_is_a_leap_year_test = TestCase (assertEqual "2000 is a leap year" (isLeapYear 2000) True)

tests = TestList [that_2001_is_not_a_leap_year_test,
                  that_1996_is_a_leap_year_test,
                  that_1900_is_not_a_leap_year_test,
                  that_2000_is_a_leap_year_test]

main = do runTestTT tests
