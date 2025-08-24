{-# LANGUAGE UnboxedTuples #-}
module Death.Functor.IO
  ( Functor
  , map
  )
where

import Prelude (($))
import GHC.Types(IO(..))

type Functor = IO

map :: (a -> b) -> Functor a -> Functor b
map fab = \case
  IO frw -> IO $ \rw -> let
          (# st, a #) = (frw rw)
        in (# st, fab a #)
