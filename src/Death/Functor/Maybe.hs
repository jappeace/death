module Death.Functor.Maybe
  ( Functor
  , map
  , pure
  )
where

import Prelude(Maybe(..), ($))

type Functor = Maybe

pure :: a -> Functor a
pure = Just

map :: (a -> b) -> Functor a -> Functor b
map fab = \case
  Just x -> Just $ fab x
  Nothing -> Nothing
