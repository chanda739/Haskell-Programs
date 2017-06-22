{-A Haskell program to
Define a function repl :: String -> String that repeats each letter twice.
Examples:

repl "abcde" = "aabbccddee"
repl " " = "  "
-}

import System.IO
repl :: String -> String
repl "" = ""
repl (x:xs) = x:x:repl xs

