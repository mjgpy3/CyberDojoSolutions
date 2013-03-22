module CalcStats (minimumValue,
                  maximumValue,
                  numberOfElements,
                  average) where

minimumValue :: [Integer] -> Integer
maximumValue :: [Integer] -> Integer
numberOfElements :: [a] -> Integer

minimumValue (x:[]) = x
minimumValue (x:y:xs) = minimumValue ((min x y):xs)

maximumValue (x:[]) = x
maximumValue (x:y:xs) = maximumValue ((max x y):xs)

numberOfElements [] = 0
numberOfElements (x:[]) = 1
numberOfElements (x:xs) = 1 + (numberOfElements xs)

average xs =  (fromIntegral (sum xs)) / (fromIntegral (length xs))
