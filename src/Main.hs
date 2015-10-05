-- | Main entry point to the application.
module Main where
import System.IO


-- | The main entry point.
main :: IO ()
main  = do
     input <-readFile "test.txt"
     putStrLn (linesCount input)
     putStrLn input
     --print $ myDrop 2 (lines input)
     print $ lastButOne (lines input)

linesCount :: String -> String
linesCount str = show (length(lines str))

myDrop:: Int ->[a]->[a]
myDrop n xs = if n <= 0 || null xs
                then xs
                else myDrop (n-1) (tail xs)         

lastButOne:: [a] -> a
lastButOne xs = head $ drop (length xs -2) xs
  