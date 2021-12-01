import qualified Data.Set 
import qualified Data.List 
str :: [Integer] -> [String]
str arr = map show arr

toint :: [String] -> [Integer]
toint arr = map read arr

isPal :: String -> Bool
isPal s = s == reverse s

main :: IO()
main = do
    print $ last (Data.List.sort (toint (filter isPal (str (Data.Set.toList $ Data.Set.fromList [x*y | x <- [100..999], y <- [100..999]])))))