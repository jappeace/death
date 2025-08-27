-- | effect system example
module Death.Effects.LineInOut
  ( readLine
  , writeLine
  )
where

import Prelude(($))
import Death.Functor.Signature
import Prelude(String, FilePath)
import Death.Functor.State

readLine :: Functor String
readLine = Functor $ \state -> (state, lineInput state)

writeLine :: String -> Functor ()
writeLine line = Functor $ \state -> (state { linesOutput  = line : linesOutput state}, ())
