module Text.APEG.Syntax.PExp where

-- basic name type

newtype Name
  = Name { unName :: String }
  deriving (Eq, Ord, Show)

-- basic parsing expressions

data PExp
  = Eps               -- empty string 
  | Symb String       -- symbols
  | Var Name          -- variables
  | PExp :@: PExp     -- concatenation
  | PExp :/: PExp     -- choice
  | Star PExp         -- star repetition
  | Not PExp          -- not predicate
  deriving (Eq, Ord, Show)
