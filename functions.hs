lucky :: (Integral a) => a -> String

lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, no luck"

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)


length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:xs) = 1 + length' xs

max' :: (Ord a) => a -> a -> a
max' a b
    | a > b     = a
    | otherwise = b

cylinder :: (RealFloat a) => a -> a -> a
cylinder r h =
    let sideArea = 2 * pi * r * h
        topArea  = pi * r^2
    in sideArea + 2 * topArea