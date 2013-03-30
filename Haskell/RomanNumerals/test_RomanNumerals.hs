module Test_RomanNumerals where

import Test.HUnit
import RomanNumerals

testFiveIsV =
  TestCase (assertEqual "5 -> V" "V" (numeralFromIntegral 5))
testTwoThousandIsMM =
  TestCase (assertEqual "2000 -> MM" "MM" (numeralFromIntegral 2000))
testThirtyIsXXX =
  TestCase (assertEqual "30 -> XXX" "XXX" (numeralFromIntegral 30))
testFourIsIV =
  TestCase (assertEqual "4 -> IV" "IV" (numeralFromIntegral 4))
testNineHunderedIsCM =
  TestCase (assertEqual "900 -> CM" "CM" (numeralFromIntegral 900))

-- More advanced test cases

test1990IsMCMXC =
  TestCase (assertEqual "1990 -> MCMXC" "MCMXC" (numeralFromIntegral 1990))
test2008IsMMVIII =
  TestCase (assertEqual "2008 -> MMVIII" "MMVIII" (numeralFromIntegral 2008))
test99IsXCIX =
  TestCase (assertEqual "99 -> XCIX" "XCIX" (numeralFromIntegral 99))
test47IsXLVII =
  TestCase (assertEqual "47 -> XLVII" "XLVII" (numeralFromIntegral 47))

tests = TestList [testFiveIsV,
                  testTwoThousandIsMM,
                  testThirtyIsXXX,
                  testFourIsIV,
                  testNineHunderedIsCM,
                  test1990IsMCMXC,
                  test2008IsMMVIII,
                  test99IsXCIX,
                  test47IsXLVII]

main = runTestTT tests
