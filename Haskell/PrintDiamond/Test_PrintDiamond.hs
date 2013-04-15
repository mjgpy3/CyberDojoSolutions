module Test_PrintDiamond where

import PrintDiamond
import Test.HUnit

testDistanceFromAToAIs0 =
  TestCase (assertEqual "d(A, A) = 0" 0 (distance 'A' 'A'))

testDistanceFromAToCIs2 =
  TestCase (assertEqual "d(A, C) = 2" 2 (distance 'A' 'C'))

tests = TestList [testDistanceFromAToAIs0,
                  testDistanceFromAToCIs2]

main = runTestTT tests
