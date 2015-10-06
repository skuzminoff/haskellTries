module BookStore where

type CustomerId = Int
type ReviewBody = String
type BookRecord = (BookInfo, BookReview)
type Address = [String]
type CardNumber = String
type CardHolder = String

bookId :: BookInfo -> Int
bookId (Book id title authors) = id

bookTitle::BookInfo -> String
bookTitle (Book id title authors) = title

bookAuthors::BookInfo -> [String]
bookAuthors (Book id title authors) = authors


data BookInfo = Book Int String [String]
                deriving (Show)

data MagazineInfo = Magazine Int String [String]
                    deriving (Show)

data BookReview = BookReview BookInfo CustomerId ReviewBody

data BillingInfo = CreditCard CardNumber CardHolder Address
                   |CashOnDelivery
                   |Invoice CustomerId
                   deriving (Show)

data Colors = Red
              |Green
              |Blue
              |Black
              |White
              deriving (Eq, Show)

infoAboutBook::BookInfo -> String
infoAboutBook b = "Book, title" ++ bookTitle(b)