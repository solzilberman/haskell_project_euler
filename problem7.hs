checkPrime :: Integer -> Bool
checkPrime n = 
    n == 2 ||
    (length (filter (\xs -> n `mod` xs == 0) (2:[3,5..floor ( sqrt (fromIntegral n))]))) == 0

primes :: [Integer]
primes = [p | p <- 2:[3,5..], checkPrime p]
main :: IO()
main = do
    print $ primes!!10000