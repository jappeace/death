-- | this s a functor. this is also a functor.
module Death.Functor.Signature
  ( Functor(..)
  , map
  )
where

import Prelude (String, ($))
import Data.Map(Map)
import Death.Functor.State


-- it didn't like
-- type Functor a = State -> (State, a)
-- for some reason.
newtype Functor a = Functor { unFunctor ::  State -> (State, a)}

map :: (a -> b) -> Functor a -> Functor b
map fab (Functor sab) = Functor $ \state -> case sab state of
  (next, a) -> (next, fab a)
