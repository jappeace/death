module Death.Functor
  ( module X
  , (<$>)
  , (<$)
  )
where

import Death.Functor.Signature as X
import Prelude (const)

(<$>) :: (a -> b) -> Functor a -> Functor b
(<$>) = map

(<$) :: b -> Functor a -> Functor b
(<$) b = map (const b)
