module Main where

import Test.Tasty
import Test.Tasty.QuickCheck as QC
import Test.Tasty.HUnit
import Death.Functor.State
import qualified Data.Map as Map
import Death.Functor.Signature

import Data.List(sort)
import qualified Death.BusinessLogic as Death

main :: IO ()
main = defaultMain tests

tests :: TestTree
tests = testGroup "Tests" [unitTests]

unitTests :: TestTree
unitTests = testGroup "Unit tests"
  [
    testCase "run business logic main" $ do
      let (result, ()) = unFunctor Death.business $ State {
        lineInput = "awesemeFile",
        linesOutput = [],
        fileSystem = mempty
        }
      result @?= State {
        lineInput = "awesemeFile",
        linesOutput = ["awesemeFile","reading it again to make sure its iso 42038 compliant","writing file...","file content:","file name:"],
        fileSystem = Map.fromList[("awesemeFile", "awesemeFile")]
        }

  ]
