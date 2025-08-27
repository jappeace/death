-- | ad hoc state, I guess if you'd do it right you'd make this opaque
--  but it serves my test example.
module Death.Functor.State
  ( State(..)
  )
where

import Prelude (String, Eq, Show)
import Data.Map(Map)

data State = State {
  lineInput :: String,
  linesOutput :: [String],
  fileSystem :: Map String String
  } deriving (Eq, Show)
