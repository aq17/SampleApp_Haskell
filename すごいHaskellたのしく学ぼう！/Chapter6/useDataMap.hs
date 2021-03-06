import qualified Data.Map as Map

phoneBook :: Map.Map String String
phoneBook = Map.fromList $
  [("betty","555-2938")
  ,("bonnie","452-2928")
  ,("patsy","493-2928")
  ,("lucille","205-2928")
  ,("wendy","939-8282")
  ,("penny","853-2492")
  ]
  
main = do
  print (Map.lookup "betty" phoneBook)
  print (Map.lookup "grace" phoneBook)
  
  let newBook = Map.insert "grace" "341-9021" phoneBook
  
  print (Map.lookup "grace" newBook)
  
  print (Map.size phoneBook)
  print (Map.size newBook)