--Problem 12
import Data.List

factorSum :: Int -> Int
factorSum n = length $ filter (\x -> rem n x == 0) [1..(div n 2)]

p12 y = map (\z -> sum [1..z]) $ filter (\x -> 500 < (factorSum x) * (factorSum (x+1))) [1..y]
