module BookStore where
import Customer


type ReviewBody = String
type BookRecord = (BookInfo, BookReview)

type CardNumber = String
type CardHolder = String

bookId :: BookInfo -> Int
bookId (Book _ _ id) = id

bookTitle::BookInfo -> String
bookTitle (Book title _ _) = title

bookAuthors::BookInfo -> [String]
bookAuthors (Book _ authors _) = authors


data BookInfo = Book String [String] Int
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
infoAboutBook b = "Book, title " ++ bookTitle b ++ "id " ++  show (bookId b)