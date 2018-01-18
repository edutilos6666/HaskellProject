module FileIOExample (test_IO) where
  import System.IO
  writeToFile = do
    fh <- openFile "test.txt" WriteMode
    hPutStrLn fh "Random line of text"
    hClose fh

  readFromFile = do
    fh <- openFile "test.txt" ReadMode
    -- note let contents = hGetContents fh -- does not work
    contents <-  hGetContents fh
    putStr contents

    hClose fh
  -- IO
  test_IO = do
    writeToFile
    readFromFile
