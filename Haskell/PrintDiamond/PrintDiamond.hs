module PrintDiamond where

distance :: Char -> Char -> Int

distance 'A' y = abs (65 - (ord $ toUpper y))
distance 'a' y = distance 'A' y
distance x y = abs ((ord $ toUpper x) - (ord $ toUpper y))
