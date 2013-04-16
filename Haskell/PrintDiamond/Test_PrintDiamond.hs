module Test_PrintDiamond where

import PrintDiamond
import Test.HUnit

testDistanceFromAToAIs0 =
  TestCase (assertEqual "d(A, A) = 0" 0 (distance 'A' 'A'))

testDistanceFromAToCIs2 =
  TestCase (assertEqual "d(A, C) = 2" 2 (distance 'A' 'C'))

testDistanceFromLowerAToUpperAIs0 =
  TestCase (assertEqual "d(a, A) = 0 (case-insensitive)" 0 (distance 'a' 'A'))

testGetPadding0ReturnsAnEmptyString =
  TestCase (assertEqual "pad 0 -> ''" "" (getPadding 0))

testGetPadding4ReturnsFourSpaces =
  TestCase (assertEqual "pad 4 -> '    '" "    " (getPadding 4))

tests = TestList [testDistanceFromAToAIs0,
                  testDistanceFromAToCIs2,
                  testDistanceFromLowerAToUpperAIs0,
                  testGetPadding0ReturnsAnEmptyString,
                  testGetPadding4ReturnsFourSpaces]

main = runTestTT tests
