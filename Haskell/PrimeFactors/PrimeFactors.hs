module PrimeFactors (isPrime, getPrimeFactors) where

-- Public
isPrime :: Integer -> Bool
getPrimeFactors :: Integer -> [Integer]

-- Private
lookForPrimeFrom :: Integer -> Integer -> Bool
isPrimeFactor :: Integer -> Integer -> Bool
lookForPrimeFactorsFrom :: Integer -> Integer -> [Integer]

getPrimeFactors n = lookForPrimeFactorsFrom n 2

isPrime 2 = True
isPrime n
 | even n    = False
 | otherwise = lookForPrimeFrom n 5

lookForPrimeFrom n i
 | ceiling (sqrt (fromIntegral n))+1 < i     = True
 | (n `mod` i) == 0                        = False
 | otherwise                               = lookForPrimeFrom n (i+2)
 
lookForPrimeFactorsFrom n i
 | n <= 1         = []
 | n `mod` i == 0 = i:lookForPrimeFactorsFrom (n `quot` i) i 
 | otherwise      = lookForPrimeFactorsFrom n (i+1)

isPrimeFactor x y = y `mod` x == 0 && isPrime(x)
