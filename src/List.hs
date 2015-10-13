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