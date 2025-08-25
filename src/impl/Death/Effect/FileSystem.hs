-- | effect system example
module Death.Effect.FileSystem
  ( FileSystemM
  , readFile
  , writeFile
  )
where

import Prelude(IO, readFile, writeFile)
type FileSystemM = IO
