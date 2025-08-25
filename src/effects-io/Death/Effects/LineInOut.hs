-- | effect system example
module Death.Effects.LineInOut
  ( readLine
  , writeLine
  )
where

import Prelude(IO, String, getLine, putStrLn)

readLine :: IO String
readLine = getLine

writeLine :: String -> IO ()
writeLine = putStrLn
