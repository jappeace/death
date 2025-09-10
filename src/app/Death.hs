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

commonFaith :: Maybe String
commonFaith = Just "no longer constrained by deceit"

marchOfValues :: [Int]
marchOfValues = [4, 3, 2]

main :: IO ()
main = (print @(Functor String) $ do
   cryOfUprising <- (\x -> ("rise up" <> x)) <$> pure "brothers and sisters"
   chorusOfTruth <- commonFaith
   pure $ cryOfUprising <> "  against the lies" <> chorusOfTruth <> show ((+1) LF.<$> marchOfValues)
   ) IO.>> business
