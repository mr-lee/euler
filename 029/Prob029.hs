--Problem 29
import Data.List

p29 x = length $ nub $ foldl (++) [] $ map (\y -> powList y x) [2..x]

powList x y = map (\z -> x ^ z) [2..y]
