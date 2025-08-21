module Death.Functor.Maybe
  ( Functor
  , map
  )
where

import Prelude(Maybe(..), ($))

type Functor = Maybe

map :: (a -> b) -> Functor a -> Functor b
map fab = \case
  Just x -> Just $ fab x
  Nothing -> Nothing
