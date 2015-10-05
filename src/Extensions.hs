module Extensions where

linesCount :: String -> String
linesCount str = show (length(lines str))

myDrop:: Int ->[a]->[a]
myDrop n xs = if n <= 0 || null xs
                then xs
                else myDrop (n-1) (tail xs)         

lastButOne:: [a] -> a
lastButOne xs = head $ drop (length xs -2) xs