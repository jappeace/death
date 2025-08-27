-- | effect system example
module Death.Effects.FileSystem
  ( readFile
  , writeFile
  )
where

import Prelude(String, FilePath, ($))
import Death.Functor.Signature
import Data.Map qualified as Map
import Data.Maybe(fromMaybe)
import Death.Functor.State

readFile  :: FilePath -> Functor String
readFile path = Functor $ \state -> (state, fromMaybe "" $ Map.lookup path (fileSystem  state))

writeFile :: FilePath -> String -> Functor ()
writeFile path contents = Functor $ \state -> (state {fileSystem = Map.insert path contents (fileSystem state)}, ())
