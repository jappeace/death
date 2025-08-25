-- | effect system example
module Death.Effects.Base
  ( Eff
  )
where

import Prelude(IO, readFile, writeFile)

type Eff = IO
