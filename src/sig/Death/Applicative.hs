module Death.Applicative
  ( module X
  , (<*>)
  , (<*)
  )
where

import Death.Applicative.Signature as X
import Death.Functor
import Prelude (const)

(<*>) :: Functor (a -> b) -> Functor a -> Functor b
(<*>) = apply

(<*) :: Functor a -> Functor b -> Functor a
(<*) a b = (const <$> a) <*> b
