--Problem 28

nThOdd n = 2 * n - 1
nThEven n = 2 * n

cumSum f n = foldl (+) 0 $ map sumOp [2..n]

sumOp n = (4*(nThOdd n)^2) - (6*(nThEven (n-1)))

p28 n = 1 + cumSum sumOp n

--The correct answer should be (p28 501)
--The trick is to recognize that the upper right corner is the sum of the
--odd squares from 1 to n for the nxn spiral, and work accordingly
