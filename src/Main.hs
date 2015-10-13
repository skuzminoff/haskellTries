-- | Main entry point to the application.
module Main where


import List
import Tree

-- | The main entry point.
main :: IO ()
main  = do
   -- let a = fromList "qweasd"
   -- print a

  --  let b = fromStandartList a
  -- print b
  
     let c = Node "parent" (Node "left node" Nothing Nothing) (Node "right node" Nothing Nothing)  
     print c
        