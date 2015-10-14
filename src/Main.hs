-- | Main entry point to the application.
module Main where
import Lending

-- | The main entry point.
main :: IO ()
main  = do
        print $ lend (100::Int) (500::Int)
        print $ lend2 (100::Int) (500::Int)
        print $ lend3 (100::Int) (500::Int)
       -- let apple1 = "apple"
        --let orange = "orange"        

        --print $ matchFruits apple1



data Fruit = Apple | Orange deriving (Show)



matchFruits:: String -> Fruit
matchFruits fruit = case fruit of 
                "apple" -> Apple
                "orange" -> Orange
