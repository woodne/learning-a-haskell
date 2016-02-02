--import Data.Char

--main = do 
--    line <- getLine
--    if null line
--        then return ()
--        else do
--            putStrLn $ reverseWords line
--            main

--reverseWords :: String -> String
--reverseWords = unwords . map reverse . words

--main2 = do
--    putStrLn "Hello, what's your first name?"
--    firstName <- getLine
--    putStrLn "what's your last name?"
--    lastName <- getLine
--    let bigFirstName = map toUpper firstName
--        bigLastName = map toUpper lastName

--    putStrLn ("Hey " ++ bigFirstName ++ " " ++ bigLastName ++ ", how are you?")

import Control.Monad  
  
main = do   
    colors <- forM [1,2,3,4] (\a -> do  
        putStrLn $ "Which color do you associate with the number " ++ show a ++ "?"  
        color <- getLine  
        return color)  
    putStrLn "The colors that you associate with 1, 2, 3 and 4 are: "  
    mapM putStrLn colors  
