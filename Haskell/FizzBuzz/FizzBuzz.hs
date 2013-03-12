module FizzBuzz where

fizzBuzzRep :: Int -> [Char]
listToFizzBuzz :: [Int] -> [[Char]]
printFizzBuzz :: [Int] -> IO ()

fizzBuzzRep x
    | x `mod` 5 == 0 && x `mod` 3 == 0 = "FizzBuzz"
    | x `mod` 5 == 0                   = "Buzz"
    | x `mod` 3 == 0                   = "Fizz"
    | otherwise                        = show x

listToFizzBuzz xs = [fizzBuzzRep x | x <- xs]

printFizzBuzz (x:xs) = do putStrLn (fizzBuzzRep x)
                          printFizzBuzz xs

printFizzBuzz _ = putStrLn ""

main = printFizzBuzz [1..100]
