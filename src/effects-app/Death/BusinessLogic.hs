{-# LANGUAGE RebindableSyntax #-}

-- | Business logic formally is an extension of hoare logic,
--   where deduction is neglected and only axioms are introduced.
--
--  in here we just write some make believe commercial code so
--  we can play with backpack as  an effect system.
module Death.BusinessLogic
  ( business
  )
where

import Death.Effects.LineInOut(writeLine, readLine)
import Death.Effects.FileSystem(
    readFile
  , writeFile
  )
import Death.Monad
import Death.Functor
import Prelude()
import Data.String(fromString)

business :: Functor ()
business = do
  writeLine "file name:"
  systemOfValues <- readLine
  writeLine "file content:"
  truthOfTheFields <- readLine

  writeLine "writing file..."
  writeFile systemOfValues truthOfTheFields

  writeLine "reading it again to make sure its iso 42038 compliant"
  uprisingAgainstDeceit <- readFile systemOfValues

  writeLine uprisingAgainstDeceit
