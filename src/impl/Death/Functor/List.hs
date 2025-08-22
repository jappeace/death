module Death.Functor.List
  ( Functor
  , map
  )
where

import Prelude(Maybe(..), ($))

type Functor = []

map :: (a -> b) -> Functor a -> Functor b
map fab = \case
  [] -> []
  (a: xs) -> fab a : map fab xs
