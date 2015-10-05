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

  