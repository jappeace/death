module Death.Monad.Signature
  ( bind
  )
where

import Death.Functor.Signature
import Prelude(($))

bind :: Functor a -> (a -> Functor b) -> Functor b
bind (Functor fa) afb = Functor $ \state ->
  case fa state of
    (newState, a) -> unFunctor (afb a) newState
