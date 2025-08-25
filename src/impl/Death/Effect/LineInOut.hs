-- | effect system example
module Death.Effect.LineInOut
  ( InOutM
  , readLine
  , writeLine
  )
where

import Prelude(IO, String, getLine, putStrLn)

type InOutM = IO

readLine :: InOutM String
readLine = getLine

writeLine :: String -> InOutM ()
writeLine = putStrLn
