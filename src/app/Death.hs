{-# LANGUAGE RebindableSyntax #-}

module Death
  ( main
  )
where

import Death.Functor
import Prelude(($), IO, print, (<>), String, Maybe(..), fromInteger, Int, show, (+))
import Death.Applicative
import Death.Monad
import Data.String(fromString)

myMaybe :: Maybe String
myMaybe = Just "zs"

myList :: [Int]
myList = [4, 3, 2]




main :: IO ()
main = print @(Functor String) $ do
   res <- (\x -> ("xxx" <> x)) <$> pure "blab"
   otherRes <- myMaybe
   pure $ res <> "  aaa a" <> otherRes <> show ((+1) <$> myList)
