{-# LANGUAGE TemplateHaskell #-}
module List where
import Prelude

data List a = Cons a (List a)
            | Nil
            deriving(Show)

fromList ::[a] -> List a
fromList (x : xs) = Cons x (fromList xs) 
fromList [] = Nil


fromStandartList :: List a -> [a]
fromStandartList (Cons x xs) = x : (fromStandartList xs)
fromStandartList Nil = []

safeSecond:: [a] -> Maybe a
safeSecond [] = Nothing
safeSecond xs = if null (tail xs)
                then Nothing
                else Just (head (tail xs))

tidySecond:: [a] -> Maybe a
tidySecond (_:x:_) = Just x
tidySecond _ = Nothing

count::[a] -> Int
count [] = 0
count (_:xs) = 1 + count xs 

summ::[Float] -> Float
summ [] = 0
summ (x:xs) =  x + (summ xs)

listMean::[Float] -> Float
listMean list
    | length list == 0 = 0.0
    | otherwise = mean
    where mean = (summ list) / fromIntegral (count list)

toPalindrome::[a] -> [a]
toPalindrome list 
    | length list == 0 = []
    | otherwise = list ++ reversedList
   where reversedList = reverse list

reverseList::[a] -> [a]
reverseList [] = []
reverseList (x:xs) = reverseList xs ++ [x]

isPalindrome::(Eq a) => [a] -> Bool
isPalindrome list
    | ((count list) `mod` 2)/= 0 = False
    | otherwise = result
   where result = compare' l1 l2
         l1 = fst $ splitAt ((length list) `div` 2) list
         l2 = snd $ splitAt ((length list) `div` 2) list

compare'::(Eq c) => [c]->[c]->Bool
compare' a b 
    |length a /= length b = False
    |otherwise = result
   where result = cmpLists a (reverseList b)

cmp::(Eq a)=> a->a->Bool
cmp x y
    |x==y = True
    |otherwise = False

cmpLists:: (Eq a) => [a]->[a]->Bool
cmpLists [] _ = False
cmpLists _ [] = False
cmpLists [][] = True
cmpLists _ _ = True
cmpLists (x:xs) (y:ys) = (cmp x y) && (cmpLists xs ys)
