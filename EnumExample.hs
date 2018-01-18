module EnumExample (test_enum) where 
  -- enumeration types
  data BaseballPlayer = Pitcher
                        | Catcher
                        | Infield
                        | Outfield
                        deriving Show


  barryBonds :: BaseballPlayer -> Bool
  barryBonds Outfield = True

  test_enum  = do
    let barryInOF = barryBonds Outfield
    putStrLn("barryBonds Outfield = " ++ show(barryInOF))
