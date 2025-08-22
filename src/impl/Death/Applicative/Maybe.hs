module Death.Applicative.Maybe
  ( pure
  , apply
  )
where

import Prelude(Maybe(..), ($))
import Death.Functor.Maybe

pure :: a -> Functor a
pure = Just

apply :: Functor (a -> b) -> Functor a -> Functor b
apply (Just fab) (Just a) = Just $ fab a
apply _ _ = Nothing
