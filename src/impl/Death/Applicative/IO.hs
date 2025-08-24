{-# LANGUAGE UnboxedTuples #-}
{-# LANGUAGE BangPatterns #-}

module Death.Applicative.IO
  ( pure
  , apply
  )
where

import Prelude ()
import GHC.Types(IO(..))
import Death.Functor.IO
import Prelude (($))

pure :: a -> Functor a
pure x = IO $ \rw -> (# rw, x #)

apply :: Functor (a -> b) -> Functor a -> Functor b
apply ioab = \case
  IO fa -> IO $ \rw ->
    let !(# rw2, a #) = fa rw
    in case ioab of
      IO ifab ->
        let !(# rw3, fab #)= ifab rw2
        in (# rw3, fab a #)
