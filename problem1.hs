
pp :: Int -> [Int]
pp xs = filter (\xs -> xs `mod` 5 == 0 || xs `mod` 3 == 0) [1..xs-1]
main :: IO ()
main = do
  print $ sum (pp 1000)