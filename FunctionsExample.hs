module FunctionsExample (test_function1, test_function2,
test_function3, test_function4, test_function5) where
  -- functions
  test_function1 = do
    putStrLn "What's your name: "
    name <- getLine
    putStrLn("Hello " ++ name)

  addMe :: Int -> Int -> Int
  addMe x y = x  + y
  subMe x y = x  - y
  addTuples :: (Int, Int) -> (Int,Int) -> (Int,Int)
  addTuples (x,y) (x2,y2) = (x + x2, y + y2)
  whatAge :: Int -> String
  whatAge 16 = "You can drive"
  whatAge 18 = "You can vote"
  whatAge 21 = "You're an adult"
  whatAge x = "Nothing Important"

  factorial :: Int -> Int
  factorial 0 = 1
  factorial n = n * factorial (n-1)


  isOdd :: Int -> Bool
  isOdd n
    | n `mod` 2 == 0 = False
    | otherwise = True

  isEven n = n `mod` 2 == 0

  whatGrade :: Int -> String
  whatGrade age
    | (age >= 5) && (age <= 6) = "Kindergarten"
    | (age > 6) && (age <= 10) = "Elementary School"
    | (age > 10) && (age <= 14) = "Middle School"
    | (age > 14) && (age <= 18) = "High School"
    | otherwise = "Go to college"


  batAvgRating :: Double -> Double -> String
  batAvgRating hits atBats
    | avg <= 0.2000 = "Terrible Batting Average"
    | avg <= 0.250 = "Average Player"
    | avg <= 0.280 = "Your doing pretty good"
    | otherwise = "You're a Superstar"
    where avg = hits / atBats

  getListItems :: [Int] -> String
  getListItems [] = "Your list ist empty"
  getListItems (x:[]) = "Your list contains " ++ show x
  getListItems (x:y:[]) = "Your list contains " ++ show x ++ " and " ++ show y
  getListItems(x:xs) = "The first item is " ++ show x ++ " and  the rest is " ++ show xs


  getFirstItem :: String -> String
  getFirstItem [] = "Empty String"
  getFirstItem all@(x:xs) = "The first letter in " ++ all ++ " is " ++ [x]


  test_function2 = do
    let addMeRes = addMe 10 20
    let subMeRes = subMe 10 20
    putStrLn("addMe 10 20  =  " ++ show(addMeRes))
    putStrLn("subMe 10 20 = " ++ show(subMeRes))
    let t1 = (10, 20)
    let t2 = (30, 40)
    let addTuplesRes = addTuples t1 t2
    putStrLn(show(t1) ++ " + " ++ show(t2) ++ " = " ++ show(addTuplesRes))
    let ans1 = whatAge 16
    let ans2 = whatAge 18
    let ans3 = whatAge 21
    let ans4 = whatAge 10
    putStrLn("ans1 = "  ++ show(ans1))
    putStrLn("ans2 = " ++ show(ans2))
    putStrLn("ans3 = " ++ show(ans3))
    putStrLn("ans4 = " ++ show(ans4))
    let f1 = factorial 10
    let f2 = product [1..10]
    putStrLn("factorial 10 = " ++ show(f1))
    putStrLn("product [1..10] = " ++ show(f2))
    let isOddRes10= isOdd 10
    let isOddRes11 =  isOdd 11
    let isEvenRes10  = isEven 10
    let isEvenRes11 = isEven 11
    putStrLn("isOdd 10 = " ++ show(isOddRes10))
    putStrLn("isOdd 11 = " ++ show(isOddRes11))
    putStrLn("isEven 10 = "++ show(isEvenRes10))
    putStrLn("isEven 11 = " ++ show(isEvenRes11))
    let ans1 = whatGrade 5
    let ans2 = whatGrade 10
    let ans3 = whatGrade 14
    let ans4 = whatGrade 18
    let ans5 = whatGrade 22
    putStrLn("whatGrade 5 = " ++ show(ans1))
    putStrLn("whatGrade 10 = " ++ show(ans2))
    putStrLn("whatGrade 10 = " ++ show(whatGrade 10))
    putStrLn("whatGrade 14 = " ++ show(ans3))
    putStrLn("whatGrade 18 = " ++ show(ans4))
    putStrLn("whatGrade 22 = " ++ show(ans5))
    putStrLn("batAvgRating 200 1000 = "++ show(batAvgRating 200 1000))
    putStrLn("batAvgRating 250 1000 = " ++ show(batAvgRating 250 1000))
    putStrLn("batAvgRating 280 1000 = " ++ show(batAvgRating 280 1000))
    putStrLn("batAvgRating 300 1000 = "++ show(batAvgRating 300 1000))
    putStrLn("getListItems [] = " ++ getListItems [])
    putStrLn("getListItems [1] = " ++ getListItems [1])
    putStrLn("getListItems [1, 2] = " ++ getListItems [1,2])
    putStrLn("getListItems [1, 2,3] = " ++ getListItems [1,2,3])
    putStrLn("getFirstItem [] = " ++ getFirstItem [])
    putStrLn("getFirstItem [foo] = " ++ getFirstItem "foo")



  -- higher order functions
  times4 :: Int -> Int
  times4 x = x * 4

  multBy4 :: [Int] -> [Int]
  multBy4 [] = []
  multBy4(x:xs) = times4 x : multBy4 xs

  areStringsEq :: [Char]-> [Char] -> Bool
  areStringsEq [] [] = True
  areStringsEq (x:xs) (y:ys) = x == y && areStringsEq xs ys
  areStringsEq _ _ = False

  doMult :: (Int->Int) -> Int
  doMult func = func 3

  getAddFunc :: Int -> (Int->Int)
  getAddFunc x y = x + y

  test_function3 = do
    let list = [1,2,3,4,5]
    let listTimes4 = map times4 list
    let multBy4Res = multBy4 list
    let eq1 = areStringsEq  "foo" "foo"
    let eq2 = areStringsEq "foo" "Foo"
    putStrLn("list  = " ++ show(list))
    putStrLn("listTimes4 = " ++ show(listTimes4))
    putStrLn("multBy4Res = " ++ show(multBy4Res))
    putStrLn("eq1 = " ++ show(eq1))
    putStrLn("eq2 = " ++ show(eq2))
    let num3Times4 = doMult times4
    let adds3 = getAddFunc 3
    let fourPlus3 = adds3 4
    let threePlusList = map adds3 list
    putStrLn("num3Times4 = " ++ show(num3Times4))
    putStrLn("threePlusList = " ++ show(threePlusList))
    putStrLn("fourPlus3 = = " ++ show(fourPlus3))


  doMath :: (Int-> Int -> Int) -> Int -> Int -> Int
  doMath algo x y =  do
    algo x y
  -- lambda
  test_function4 = do
    let dbl1To10 = map (\x -> x *2) [1..10]
    putStrLn("dbl1To10 = " ++ show(dbl1To10))
    let x = 10
    let y = 3
    let addRes = doMath (\x y -> x + y) x y
    let subRes = doMath (\x y -> x - y) x y
    let multRes = doMath (\x y -> x * y) x y
    let divRes = doMath (\x y -> quot x  y) x y
    putStrLn("x  = " ++ show x ++ " and y = " ++show y)
    putStrLn("x + y = " ++ show addRes)
    putStrLn("x - y = " ++ show subRes)
    putStrLn("x * y = " ++ show multRes)
    putStrLn("quot x  y = " ++ show divRes)




  doubleEvenNumber:: Int -> Int
  doubleEvenNumber y =
    if(y `mod` 2 /= 0)
      then y
      else y * 2


  getClass :: Int -> String
  getClass n = case n of
    5 -> "Go to Kindergarten"
    6 -> "Go to elementary school"
    _ -> "Go to some other place"

  -- other stuffs about functions
  test_function5 = do
    putStrLn("doubleEvenNumber 10 = " ++ show(doubleEvenNumber 10))
    putStrLn("doubleEvenNumber 11 = " ++ show(doubleEvenNumber 11))
    putStrLn("getClass 5 = " ++ show(getClass 5))
    putStrLn("getClass 6 = " ++ show(getClass 6))
    putStrLn("getClass 7 = " ++ show(getClass 7))
