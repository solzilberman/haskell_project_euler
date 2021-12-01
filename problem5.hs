main :: IO()
main = do
    print $ foldr lcm 2 [2..20]