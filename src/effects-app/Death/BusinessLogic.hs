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
import Death.Effects.Base
import Prelude()
import Data.String(fromString)

business :: Eff ()
business = do
  writeLine "file name:"
  fileName <- readLine
  writeLine "file content:"
  fileContent <- readLine

  writeLine "writing file..."
  writeFile fileName fileContent

  writeLine "reading it again to make sure its iso 42038 compliant"
  res <- readFile fileName

  writeLine res
