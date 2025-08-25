{-# LANGUAGE RebindableSyntax #-}

module Death
  ( main
  )
where

import Maybe.Functor
import Prelude(($), IO, print, (<>), String, Maybe(..), fromInteger, Int, show, (+))
import Maybe.Applicative
import Maybe.Monad
import Data.String(fromString)
import qualified List.Functor as LF
import qualified IO.Monad as IO
import Death.BusinessLogic(business)

myMaybe :: Maybe String
myMaybe = Just "zs"

myList :: [Int]
myList = [4, 3, 2]

main :: IO ()
main = (print @(Functor String) $ do
   res <- (\x -> ("xxx" <> x)) <$> pure "blab"
   otherRes <- myMaybe
   pure $ res <> "  aaa a" <> otherRes <> show ((+1) LF.<$> myList)
   ) IO.>> business
