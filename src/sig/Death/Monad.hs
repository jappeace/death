module Death.Monad
  ( module X
  , (>>=)
  , (>=>)
  )
where

import Death.Monad.Signature as X
import Death.Functor(Functor)
import Prelude ()

(>=>) :: (a -> Functor b) -> (b -> Functor c) -> (a -> Functor c)
(>=>) afb bfc a =
  afb a >>= bfc

(>>=) :: Functor a -> (a -> Functor b) -> Functor b
(>>=) = bind
