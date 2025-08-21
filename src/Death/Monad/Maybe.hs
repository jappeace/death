module Death.Monad.Maybe
  (
  (>=>)
  )
where

import Death.Functor.Maybe
import Prelude(Maybe(..))

(>=>) :: (a -> Functor b) -> (b -> Functor c) -> (a -> Functor c)
(>=>) fab fbc a =
  case fab a of
    Just b -> fbc b
    Nothing -> Nothing
