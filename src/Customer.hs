module Customer where

type CustomerId = Int
type Address = [String]



data Customer = Customer{
                customerId :: CustomerId,
                customerName :: String,
                customerAddress :: Address
                }deriving (Show)