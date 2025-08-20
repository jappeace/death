module Death.Functor
  ( module X
  , (<$>)
  )
where

import Death.Functor.Signature as X
import Prelude ()

(<$>) :: (a -> b) -> Functor a -> Functor b
(<$>) = map
