module PrintDiamond where

import Data.Char

distance :: Char -> Char -> Int
distance 'A' y = abs (65 - (ord $ toUpper y))
distance 'a' y = distance 'A' y
distance x y = abs ((ord $ toUpper x) - (ord $ toUpper y))

getPadding :: Int -> String
getPadding 0 = ""
getPadding n = [' ' | x <- [1..n]]

getDiamondLine :: Char -> Char -> String
getDiamondLine 'A' end = getPadding (distance 'A' end) ++ "A"
getDiamondLine cur end =  startPad ++ [cur] ++ endPad ++ [cur]
 where startPad = getPadding (distance cur end)
       endPad = getPadding (( distance 'A' cur -1)*2 + 1)

getDiamondLines :: Char -> [String]
getDiamondLines end = [getDiamondLine c end | c <- absRange]
 where range = ['A'..end]
       absRange = range ++ tail (reverse range)
