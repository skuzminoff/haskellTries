module Lending where

lend:: Int-> Int -> Maybe Int
lend amount balance = let reserve = 100
                          newBalance =  balance - amount
                      in if newBalance < reserve
                         then Nothing
                         else Just newBalance

lend2::Int->Int->Maybe Int
lend2 amount balance = if amount < reserve *2
                       then Just newBalance
                       else Nothing
                       where reserve = 100
                             newBalance = balance - amount

lend3::Int->Int->Maybe Int
lend3 amount balance 
    | amount > reserve * 2 = Nothing
    | reserve <= 0 = Nothing
    | otherwise = Just newBalance
   where reserve = 100
         newBalance = balance - amount