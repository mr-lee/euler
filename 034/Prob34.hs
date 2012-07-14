import Data.Char

--takes an integer and gives an array of digits
numToDigits :: Int -> [Int]
numToDigits n = map digitToInt $ show n

fact :: Int -> Int
fact n = product [1..n]

-- takes an integer and returns the sum of the digits in factorial
sumFact :: Int -> Int
sumFact n = foldl (+) 0 $ map fact $ numToDigits n

solver :: Int -> Int
solver n = sum $ filter (\x -> x == sumFact x) [4..n]
