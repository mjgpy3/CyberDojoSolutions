module Test_PrimeFactor where

import Test.HUnit
import PrimeFactors

five_is_prime_test =
 TestCase (assertEqual "5 should be prime" True (isPrime 5))

two_is_prime_test =
 TestCase (assertEqual "2 should be prime" True (isPrime 2))

three_is_prime_test =
 TestCase (assertEqual "3 should be prime" True (isPrime 3))

four_is_not_prime_test =
 TestCase (assertEqual "4 should not be prime" False (isPrime 4))

fifteen_is_not_prime_test =
 TestCase (assertEqual "15 should not be prime" False (isPrime 15))

six_is_not_prime_test =
 TestCase (assertEqual "6 should not be prime" False (isPrime 6))

twenty_nine_is_prime_test =
 TestCase (assertEqual "29 should be prime" True (isPrime 29))

two_is_the_only_prime_factor_of_two_test =
 TestCase (assertEqual "2 -> [2]" [2] (getPrimeFactors 2))


three_is_the_only_prime_factor_of_three_test =
 TestCase (assertEqual "3 -> [3]" [3] (getPrimeFactors 3))

two_and_two_are_the_prime_factors_of_four_test =
 TestCase (assertEqual "4 -> [2,2]" [2,2] (getPrimeFactors 4))

two_and_three_are_the_prime_factors_of_six_test = 
 TestCase (assertEqual "6 -> [2,3]" [2,3] (getPrimeFactors 6))

three_and_three_are_the_prime_factors_of_nine_test =
 TestCase (assertEqual "9 -> [3,3]" [3,3] (getPrimeFactors 9))

two_two_and_three_are_the_prime_factors_of_twelve =
 TestCase (assertEqual "12 -> [2,2,3]" [2,2,3] (getPrimeFactors 12))

three_and_five_are_the_prime_factors_of_fifteen =
 TestCase (assertEqual "15 -> [3,5]" [3,5] (getPrimeFactors 15))

tests = TestList [five_is_prime_test,
                  two_is_prime_test,
                  three_is_prime_test,
                  four_is_not_prime_test,
                  fifteen_is_not_prime_test,
                  six_is_not_prime_test,
                  twenty_nine_is_prime_test,
                  two_is_the_only_prime_factor_of_two_test,
                  three_is_the_only_prime_factor_of_three_test,
                  two_and_two_are_the_prime_factors_of_four_test,
                  two_and_three_are_the_prime_factors_of_six_test,
                  three_and_three_are_the_prime_factors_of_nine_test,
                  two_two_and_three_are_the_prime_factors_of_twelve,
                  three_and_five_are_the_prime_factors_of_fifteen]

main = do runTestTT tests
