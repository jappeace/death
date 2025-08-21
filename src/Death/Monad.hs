module Death.Monad
  ( module X
  , (>>=)
  )
where

import Death.Monad.Signature as X
import Death.Functor
import Prelude (const)


(>>=) :: Functor a -> (a -> Functor b) -> Functor b
(>>=) fa fab =
  ((const fa) >=> fab) ()
