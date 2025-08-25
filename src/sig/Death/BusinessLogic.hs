
-- | Business logic formally is an extension of hoare logic,
--   where deduction is neglected and only axioms are introduced.
--
--  in here we just write some make believe commercial code so
--  we can play with backpack as  an effect system.
module Death.BusinessLogic
  ( main
  )
where

import Death.Effects.LineInOut(writeLine, InOutM, readLine)
import Death.Effects.FileSystem( FileSystemM
  , readFile
  , writeFile
  )
import Death.Monad
import Death.Functor
import Prelude()

-- unify everything, doesn't have to be functor but we need
-- to pick one of the signatures
type AppM = Functor
type FileSystemM = Functor
type InOutM = Functor

main :: AppM ()
main = do
  writeLine "file name:"
  fileName <- readLine
  writeLine "file content:"
  fileContent <- readLine

  writeLine "writing file..."
  writeFile fileName fileContent

  writeLine "reading it again to make sure its iso 42038 compliant"
  res <- readFile fileName

  writeLine res
