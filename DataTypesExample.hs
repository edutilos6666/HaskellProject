module DataTypesExample (test_dataTypes) where
  
  always5 :: Int
  always5 = 5


  -- data types
  test_dataTypes = do
    let maxInt = maxBound :: Int
    let minInt = minBound :: Int
    putStrLn("maxInt = " ++ show(maxInt))
    putStrLn("minInt = " ++ show(minInt))
    let bigFloat = 3.99999999999 + 0.00000000005
    putStrLn("bigFloat = " ++ show(bigFloat))
    putStrLn("always5 = " ++ show(always5))
