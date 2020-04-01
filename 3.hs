main :: IO ()
main = do
  --print evencubes
  --print (grid 1 2)
  --print (square 2)
  --print (replicate 4 'a')
  --print (pyths 10)
  --print (perfect 500)
  --print (positions 0 [1,0,0,1,0,1,1,0])
  print (scalProduct [1, 2, 3] [2, 2, 2])


-- Exercise One
evencubes :: [Integer]
evencubes = [ x^3 | x <- [1..10], even x ]

--Exercise Two
grid :: Int -> Int -> [(Int, Int)]
grid m n = [ (x, y) | x <- [0..m], y <- [0..n]]

square :: Int -> [(Int, Int)]
square n = [ (x, y) | x <- [0..n], y <- [0..n], x /= y ]

--Exercise Three
replicate1 :: Int -> a -> [a]
replicate1 n a = [ a | r <- [0..n]]

--Exercise Four
pyths :: Int -> [(Int, Int, Int)]
pyths l = [ (x, y, z) | x <- [1..l], y <- [1..l], z <- [1..l], x^2 + y^2 == z^2]

--Exercise Five
perfect :: Int -> [Int]
perfect l = [ x | x <- [1..l], sum (factors x) - x == x ] where
  factors n = [x | x <- [1..n], n `mod` x == 0]

--Exercise Six
positions :: Eq a => a -> [a] -> [Int]
positions x xs = find x (zip xs [0..length xs - 1]) where
  find :: Eq a => a -> [(a,b)] -> [b]
  find k t = [ v | (k',v) <- t, k==k']

--Exercise Seven
scalProduct :: [Int] -> [Int] -> Int
scalProduct xs ys = sum [ x * y | (x, y) <- zip xs ys ]
