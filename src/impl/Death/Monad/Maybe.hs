module Death.Monad.Maybe
  (
  bind
  )
where

import Death.Functor.Maybe
import Prelude(Maybe(..))

bind :: Functor a -> (a -> Functor b) -> Functor b
bind fa afb =
  case fa of
    Just a -> afb a
    Nothing -> Nothing
