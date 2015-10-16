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

      -- print $ (length b) `mod` 2
      -- let l1 = fst $ splitAt ((length b) `div` 2) b
      -- let l2 = reverse $ snd (splitAt ((length b) `div` 2) b)
     --  print l1
     --  print l2
      -- print  $ cmpLists l1 l2
      
       print $ isPalindrome b
       print $ isPalindrome [1, 2, 3, 3, 2,1]