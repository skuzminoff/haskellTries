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