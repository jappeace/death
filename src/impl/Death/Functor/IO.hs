{-# LANGUAGE UnboxedTuples #-}
{-# LANGUAGE BangPatterns #-}

module Death.Functor.IO
  ( Functor
  , map
  )
where

import Prelude (($))
import GHC.Types(IO(..))
import Death.Base(Functor)

map :: (a -> b) -> Functor a -> Functor b
map fab = \case
  IO frw -> IO $ \rw -> let
          !(# st, a #) = (frw rw)
        in (# st, fab a #)
