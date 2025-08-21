module Death
  ( main
  )
where

import Death.Functor
import Prelude(($), IO, print, (<>), String)
import Death.Applicative


main :: IO ()
main = print @(Functor String) $
   (\x -> ("xxx" <> x)) <$> pure "blab"
