module Worksheet where

import Control.Plus (empty)
import Data.List (List(..), filter, head)
import Data.List.NonEmpty (toList)
import Data.Maybe (Maybe, fromMaybe)
import Prelude (class Semiring, ($), (+), (<>), (==))

a :: String
a = "3"

sum :: ∀ t3. Semiring t3 ⇒ t3 → t3 → t3
sum b c = b + c

type SomeInt = Int
numArray :: Array SomeInt
numArray = [1,2,3]

type Nums = List SomeInt
numList :: Nums
numList = empty

addNum :: Int → Nums → Nums
addNum = Cons

type Author = { name ∷ String , interests ∷ Array String }
type Authors = List Author

emptyAuthors :: Authors
emptyAuthors = empty

addAuthor :: Author -> Authors -> Authors
addAuthor = Cons

author1 :: Author
author1 = { name: "Phil", interests: ["Functional Programming", "JavaScript"] }

authors1 :: Authors
authors1 = addAuthor author1 emptyAuthors

author2 :: Author
author2 = { name: "Stewie", interests: ["Logical Programming", "Prolog"] }

authors2 :: Authors
authors2 = addAuthor author2 authors1

findAuthor :: String -> Authors -> Maybe Author
findAuthor name authors = head $ filter filterAuthor authors
  where
    filterAuthor :: Author -> Boolean
    filterAuthor author = author.name == name

found :: Maybe Author
found = findAuthor "Stewie" authors2

showName :: { name :: String } -> String
showName { name: n } = n <> "!"

getName :: Maybe String -> String
getName mx = fromMaybe "" mx








