module Main where

import Control.Monad (msum)
import Happstack.Server (Method(GET, POST), dir, method, nullConf, ok, simpleHTTP)

main :: IO ()
main = simpleHTTP nullConf $ msum
       [ dir "foo" $ do method GET
                        ok $ "You did a GET request on /foo\n"
       , do method GET
            ok $ "You did a GET request.\n"
       , do method POST
            ok $ "You did a POST request.\n"
       ]
