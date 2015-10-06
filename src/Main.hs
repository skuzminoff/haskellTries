-- | Main entry point to the application.
module Main where
import System.IO
import Extensions
import BookStore


-- | The main entry point.
main :: IO ()
main  = do
        let book1 = Book 1 "Test book 1" ["t1", "t2"]
        --print $ bookId (book1)
        map (Book [1, 2..10] "Test book" ["qwe", "asd"])
        