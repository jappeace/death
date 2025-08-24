{-# LANGUAGE UnboxedTuples #-}

module Death.Monad.IO
  (
  bind
  )
where

import GHC.Types(IO(..))
import Death.Functor.IO
import Prelude (($))

bind :: Functor a -> (a -> Functor b) -> Functor b
bind (IO rwa) aiob = IO $ \rw ->  let
    (# rw2, a #) = rwa rw
    in case aiob a of
         IO rwb -> rwb rw2
