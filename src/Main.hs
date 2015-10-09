-- | Main entry point to the application.
module Main where
import System.IO
import Extensions
import BookStore
import Customer



-- | The main entry point.
main :: IO ()
main  = do
        --let book1 = Book 1 "Test book 1" ["t1", "t2"]
        --print $ book1
        --let list = map (Book "Test book" ["qwe", "asd"]) [1, 2..10]
        --putStrLn  (unlines (map (infoAboutBook) list))
        let customer1 = Customer {
            customerId = 123,
            customerName = "Alex Sander",
            customerAddress = ["Ohaio", "cityname", "123 Washington str apt.12"]
            }
--        print (unlines (customerAddress (customer1)))
        putStrLn $ unlines $ customerAddress customer1
        
        