-- | Main entry point to the application.
module Main where
import List

-- | The main entry point.
main :: IO ()
main  = do
       let a = [1.0..10.0]
      --print $ listMean a
       print $ toPalindrome a
       let b = toPalindrome a
       print $ isPalindrome b