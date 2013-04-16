module PrintDiamond where

import Data.Char

distance :: Char -> Char -> Int
distance 'A' y = abs (65 - (ord $ toUpper y))
distance 'a' y = distance 'A' y
distance x y = abs ((ord $ toUpper x) - (ord $ toUpper y))

getPadding :: Int -> String
getPadding 0 = ""
getPadding n = [' ' | x <- [1..n]]
