import System.Environment
prime :: Integer -> Integer
prime n = gcd n 2
n :: Integer
n = 13195

range :: Integer -> [Integer]
range n = [2.. (round (sqrt $ fromIntegral n))+1]

checkPrime :: [Integer] -> Integer -> [Integer]
checkPrime xs np = filter (\xs -> np `mod` xs == 0 && (length (checkPrime (range xs) xs)) == 0) xs

main :: IO()
main = do
    args <- getArgs
    let nx = read (head args) :: Integer
    print $ last (checkPrime (range nx) nx)