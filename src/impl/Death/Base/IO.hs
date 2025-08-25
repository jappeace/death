{-# LANGUAGE UnboxedTuples #-}
{-# LANGUAGE BangPatterns #-}

module Death.Functor.IO
  ( Functor
  )
where

import Prelude ()
import GHC.Types(IO(..))

type Functor = IO
