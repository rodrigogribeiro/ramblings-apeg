
module Text.APEG.Syntax.AttrLang where

type Env = [Value]

data Value
   = VInt Int
   | VBool Bool
   | VClosure Term Env
   deriving (Eq, Ord, Show)

data Term
   = Var Int
   | Val Value
   | Lam Term
   | App Term Term
   | Pair Term Term
   | Fst Term
   | Snd Term
   | InL Term
   | InR Term
   | Case Term Term Term
   | Fix Term
   deriving (Eq, Ord, Show)


