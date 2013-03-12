module Test_FizzBuzz where

import Test.HUnit
import FizzBuzz

div_by_three_only_gets_fizz_test = TestCase (assertEqual "Test1" "Fizz" (fizzBuzzRep 9))
div_by_five_only_gets_buzz_test = TestCase (assertEqual "Test2" "Buzz" (fizzBuzzRep 25))
div_by_three_and_five_gets_fizzbuzz_test = TestCase (assertEqual "Test3" "FizzBuzz" (fizzBuzzRep 45))
div_by_neither_gets_number_itself_test = TestCase (assertEqual "Test4" "7" (fizzBuzzRep 7))
list_to_fizzbuzz_works_on_small_list_test = TestCase (assertEqual "Test5" ["FizzBuzz", "1", "2", "Fizz", "4", "Buzz"] (listToFizzBuzz [0..5]))


tests = TestList [div_by_three_only_gets_fizz_test,
                  div_by_five_only_gets_buzz_test,
                  div_by_three_and_five_gets_fizzbuzz_test,
                  div_by_neither_gets_number_itself_test,
                  list_to_fizzbuzz_works_on_small_list_test]

-- main = do runTestTT tests
