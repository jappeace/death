module Death.Applicative.List
  ( pure
  , apply
  )
where

import Prelude((<>))
import Death.Functor.List


pure :: a -> Functor a
pure x = [x]

-- nb this is cartesian as in base, we can define another
-- module doing the zipping.
apply :: Functor (a -> b) -> Functor a -> Functor b
apply [] _as = []
apply (fab : xs) as = (map fab as) <> apply xs as
