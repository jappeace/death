module Death.Applicative.List
  ( pure
  , apply
  )
where

import Prelude(Maybe(..), ($))
import Death.Functor.List


pure :: a -> Functor
pure x = [x]

apply :: Functor (a -> b) -> Functor a -> Functor b
apply [] as = []
apply (fab : xs) as = (map fab as) <> apply xs as
