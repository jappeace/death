module Death.Applicative.Signature
  ( pure
  , apply
  )
where

import Death.Functor.Signature
import Prelude(($))

pure :: a -> Functor a
pure x = Functor $ \state -> (state, x)

apply :: Functor (a -> b) -> Functor a -> Functor b
apply (Functor sab) (Functor sa) = Functor $ \state -> case sa state of
  (next, a) -> case sab next of
    (nnext, fab) -> (nnext, fab a)
