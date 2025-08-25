-- because we just replaced the base monad stack with our own module implementation,
-- we have to make, Functor = Eff, so we can actually use it
--
-- for a real effect system I probably wouldn't replace the monad
-- stack, but I want to go extreme here.
module Death.Base
  ( Functor
  ) where

import Prelude()
import Death.Effects.Base

type Functor = Eff
