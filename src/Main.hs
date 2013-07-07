{-# LANGUAGE OverloadedStrings #-}
module Main where

import System.Environment
import Network.HTTP.Types (status200)
import Network.Wai
import Network.Wai.Handler.Warp (run)

application _ = return $
  responseLBS status200 [("Content-Type", "text/plain")] "Hello++ Nadja.\n\nThis is Kristoffer with Haskell on Heroku."

main = do
  port <- getEnv "PORT"
  run (fromIntegral $ read port) application
