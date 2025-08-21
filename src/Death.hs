{-# LANGUAGE RebindableSyntax #-}

module Death
  ( main
  )
where

import Death.Functor
import Prelude(($), IO, print, (<>), String)
import Death.Applicative
import Death.Monad
import Data.String(fromString)


main :: IO ()
main = print @(Functor String) $ do
   res <- (\x -> ("xxx" <> x)) <$> pure "blab"
   pure $ res <> "  aaa a"
