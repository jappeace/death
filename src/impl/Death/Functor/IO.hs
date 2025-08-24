module Death.Functor.IO
  ( Functor
  , map
  )
where

import GHC.Types(IO(..))

type Functor = IO

map :: (a -> b) -> Functor a -> Functor b
map fab = \case
  IO frw -> IO (\rw -> second fab (frw rw))
