module Death.Monad.List
  ( bind
  )
where

import Prelude(Maybe(..), ($), (<>))
import Death.Functor.List

bind :: Functor a -> (a -> Functor b) -> Functor b
bind [] _ = []
bind (a : xs) afb = afb a <> bind xs afb
