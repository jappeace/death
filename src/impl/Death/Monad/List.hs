module Death.Monad.List
  ( bind
  )
where

import Prelude((<>))
import Death.Functor.List

bind :: Functor a -> (a -> Functor b) -> Functor b
bind [] _ = []
bind (a : xs) afb = afb a <> bind xs afb
