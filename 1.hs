main :: IO ()
main = do
  --print (double 5)
  --print (quadruple 5)
  --print (doubleMultiply 5)
  --print (sumList [2, 3, 5])
  --print (productList [2, 3])
  --print (quicksort [2, 3, 1, 9, 1, 4, 5])
  print "This is a message"

-- Exercise One --
double :: Int -> Int
double x = x + x

quadruple :: Int -> Int
quadruple x = double(double x)

doubleMultiply :: Int -> Int
doubleMultiply x = x * 2

-- Exercise Two --
sumList :: [Int] -> Int
sumList []     = 0
sumList (x:xs) = x + sumList xs

-- Exercise Three --
productList :: [Int] -> Int
-- Downside is empty lists have a product of 1
productList []     = 1
productList (x:xs) = x * productList xs

-- Exercise Four --
quicksort :: [Int] -> [Int]
quicksort [] = []
quicksort (x:xs) = quicksort ls ++ [x] ++ quicksort rs
                   where
                     ls = [ a | a <- xs , a <= x ]
                     rs = [ a | a <- xs , a > x ]

-- Swap call for right and left side to reverse
quicktros :: [Int] -> [Int]
quicktros [] = []
quicktros (x:xs) = quicktros rs ++ [x] ++ quicktros ls
                  where
                    ls = [ a | a <- xs , a <= x ]
                    rs = [ a | a <- xs , a > x ]

-- Exercise Five --
-- Removing the = means that duplicates are removed from the output

-- Exercise Six --
--print ((2 ^ 3) * 4)
--print ((2 * 3) + (4 * 5))
--print (2 + (3 * (4 ^ 5)))
--print ((2 ^ 2) + (2 ^ 2))

-- Exercise Seven --
n :: Int -> Int
n = a div length xs
where
  a = 10
  xs = [1,2,3,4,5]
