--Problem 45
import Data.List

p45 x = filter isTri $ intersect (pent x) $ hexa x

isTri x = 2*x == (\y -> y*(y+1)) (round $ sqrt $ fromIntegral (2*x))

tri x = map (\z -> sum [1..z]) [285..x]

pent x = map (\y -> round (fromIntegral(y)/2)) $ map (\z -> z*(3*z-1)) [165..x]

hexa x = map (\z -> z*(2*z-1)) [143..x]

