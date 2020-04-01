import           Data.Char

main :: IO ()
main = do
  print "Hello"
  --print (add 1 2 3)
  --print (copy "Hello Vsauce")
  --print (explode "Michael Here")
  --print (halve [2, 3, 4, 5])
  --print (disj (False, True))
  print (dec 2 (enc 2 "Vsauce"))

-- Exercise One --
--['a','b','c'] :: [Char]
--('a','b','c') :: (Char, Char, Char)
--['a',3,True] :: None
--('a',3,True) :: Num b => (Char, b, Bool)
--[ (False, '0'), (True,'1') ] :: [(Bool, Char)]
--( [True,False] , ['0','1'] ) :: ([Bool], [Char])
--[tail, init, reverse] :: [[a] -> [a]]
--[] :: [a]
--2 : 3 : [] : 4 : 5 : [] :: Num [a] => [[a]]
--[] : [] :: [[a]]

-- Exercise Two --
bools = [True, False, True]
nums = [[1, 2], [3, 4], [5]]

add :: Int -> Int -> Int -> Int
add x y z = x + y + z

copy :: a -> (a, a)
copy a = (a, a)

--apply :: (a -> b) -> a -> b
--apply x

explode :: String -> [Char]
explode = id

-- Exercise Three --
-- Returns the second element of a list
-- second :: [a] -> b

-- Swaps a tuple
-- swap :: (a, b) -> (b, a)

-- Add two elements to a tuple
-- pair :: x -> y -> (x, y)

-- Double a number
-- double :: Int -> Int

-- Checks if a word is the same backwards
-- palindrome :: [a] -> [a]

-- Apply a function twice
-- twice :: f -> x -> f -> x

-- Exercise Four --
-- The eq class is used for comparison so you shouldn't use it on it's own

-- Exercise Five --
halve :: [a] -> ([a],[a])
halve l = splitAt ((length l + 1) `div` 2) l

-- Exercise Six --
--third :: [a] -> a
--third x = head(tail (tail x))

--third :: [a] -> a
--third x = x!!2

--third :: [a] -> a
--third []      = error "Empty list"
--third [_,_,x] = x

-- Exercise Seven --
--safetail :: [a] -> [a]
--safetail a =
--  if nullCheck a
--    then error "Empty list"
--    else tail a

safetail :: [a] -> [a]
safetail x | null x = error "Empty list"
  | otherwise = tail x

-- Exercise Eight --
disj :: (Bool, Bool) -> Bool
disj (True, _)  = True
disj (False, x) = x

-- Exercise Nine --
enc :: Int -> String -> String
enc x []     = ""
enc x (y:ys) = chr (x + ord y) : enc x ys

dec :: Int -> String -> String
dec x []     = ""
dec x (y:ys) = chr (ord y - x) : dec x ys
