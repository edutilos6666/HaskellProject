import Data.List
import System.IO


main = do
  putStrLn("<<test_dataTypes()>>")
  test_dataTypes
  putStrLn("<<test_mathFunctions()>>")
  test_mathFunctions
  putStrLn("<<test_logicalOps()>>")
  test_logicalOps
  putStrLn("<<test_list()>>")
  test_list
  putStrLn("<<test_tuple()>>")
  test_tuple
  -- putStrLn("<<test_function1()>>")
  -- test_function1
  putStrLn("<<test_function2()>>")
  test_function2
  putStrLn("<<test_function3()>>")
  test_function3
  putStrLn("<<test_function4()>>")
  test_function4
  putStrLn("<<test_function5()>>")
  test_function5
  putStrLn("<<test_enum()>>")
  test_enum
  putStrLn("<<test_customTypes()>>")
  test_customTypes
  putStrLn("<<test_IO()>>")
  test_IO


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


-- math functions
test_mathFunctions = do
  let sumOfVals = sum [1..1000]
  let addEx = 5 + 4
  let subEx = 5 - 4
  let multEx = 5 * 4
  let divEx = 5 / 4
  let modEx = mod 5 4
  let modEx2 = 5 `mod` 4
  let negNumEx = 5 + (-4)
  putStrLn("sum[1..1000] = " ++ show(sumOfVals))
  putStrLn("5 + 4 = " ++ show(addEx))
  putStrLn("5 - 4 = " ++ show(subEx))
  putStrLn("5 * 4 = " ++ show(multEx))
  putStrLn("5 / 4 = " ++ show(divEx))
  putStrLn("mod 5 4 = " ++ show(modEx))
  putStrLn("5 `mod` 4 = " ++ show(modEx2))
  putStrLn("5 + (-4) = " ++ show(negNumEx))
  let num9 = 9::Int
  let  sqrtOf9 = sqrt (fromIntegral num9)
  putStrLn(show(num9) ++ " sqrt = " ++ show(sqrtOf9))
  -- built-in functions
  let piVal = pi
  let ePow9 = exp 9
  let logOf9 = log 9
  let squared9 = 9 ** 2
  let truncateVal = truncate 9.9999
  let roundVal = round 9.999
  let ceilingVal = ceiling 9.999
  let floorVal = floor 9.999
  putStrLn("pi = " ++ show(piVal))
  putStrLn("exp 9 = " ++ show(ePow9))
  putStrLn("log 9 = " ++ show(logOf9))
  putStrLn("9 ** 2 = " ++ show(squared9))
  putStrLn("truncate 9.9999 = " ++ show(truncateVal))
  putStrLn("round 9.999 = " ++ show(roundVal))
  putStrLn("ceiling 9.999 = "++ show(ceilingVal))
  putStrLn("floor 9.999 = " ++ show(floorVal))
  let sinVal = sin(asin(1))
  let cosVal = cos(acos(1))
  let tanVal = tan(atan(1))
  let sinhVal = sinh(asinh(1))
  let coshVal = cosh(acosh(1))
  let tanhVal = tanh(atanh(0.99))
  putStrLn("sin(asin(1)) = " ++ show(sinVal))
  putStrLn("cos(acos(1)) = " ++ show(cosVal))
  putStrLn("tan(atan(1)) = " ++ show(tanVal))
  putStrLn("sinh(asinh(1)) = " ++ show(sinhVal))
  putStrLn("cosh(acosh(1)) = " ++ show(coshVal))
  putStrLn("tanh(atanh(0.99)) = " ++ show(tanhVal))

-- logical operators
test_logicalOps = do
  let trueAndFalse = True && False
  let trueOrFalse = True || False
  let notTrue = not(True)
  putStrLn("True && False = " ++ show(trueAndFalse))
  putStrLn("True || False = " ++ show(trueOrFalse))
  putStrLn("not(True) = " ++ show(notTrue))

-- list
test_list = do
  let primeNumbers = [3,5,7,11]
  let morePrimes = primeNumbers ++ [13, 17,19,23,29]
  let favNums = 2:7:21:66:[]
  let multList = [[3,5,7], [11,13,17]]
  let morePrimes2 = 2 : morePrimes
  putStrLn("primeNumbers = " ++ show(primeNumbers))
  putStrLn("morePrimes = " ++ show(morePrimes))
  putStrLn("favNums = " ++ show(favNums))
  putStrLn("multList = " ++ show(multList))
  putStrLn("morePrimes2 = "++ show(morePrimes2))
  let lenPrime = length morePrimes2
  let revPrime = reverse morePrimes2
  let isListEmpty = null morePrimes2
  let secondPrime = morePrimes2 !! 1
  let firstPrime = head morePrimes2
  let lastPrime = last morePrimes2
  let primeTail = tail morePrimes2
  let primeInit = init morePrimes2
  let first3Primes = take 3 morePrimes2
  let removedPrimes = drop 3 morePrimes2
  let is7InList = 7 `elem` morePrimes2
  let is7InList2 = elem 7 morePrimes2
  let maxPrime = maximum morePrimes2
  let minPrime = minimum morePrimes2
  let sumPrimes = sum morePrimes2
  putStrLn("length morePrimes2 = " ++ show(lenPrime))
  putStrLn("reverse morePrimes2 = " ++ show(revPrime))
  putStrLn("null morePrimes2 = " ++ show(isListEmpty))
  putStrLn("morePrimes2 || 1 = " ++ show(secondPrime))
  putStrLn("last morePrimes2 = " ++ show(lastPrime))
  putStrLn("tail morePrimes2 = " ++ show(primeTail))
  putStrLn("initmorePrimes2 = " ++ show(primeInit))
  putStrLn("take 3 morePrimes2 = " ++ show(first3Primes))
  putStrLn("drop 3 morePrimes2 = " ++ show(removedPrimes))
  putStrLn("7 `elem` morePrimes2 = " ++ show(is7InList))
  putStrLn("elem 7 morePrimes2 = " ++ show(is7InList2))
  putStrLn("maximum morePrimes2 = " ++ show(maxPrime))
  putStrLn("minimum morePrimes2 = " ++ show(minPrime))
  putStrLn("sum morePrimes2 = "++ show(sumPrimes))

  let newList = [2,3,5]
  let prodPrimes = product newList
  let zeroToTen = [0..10]
  let evenList = [2,4..20]
  let letterList = ['A', 'C'..'Z']
  let infinPow10 = [10,20..]
  let many2s = take 10 (repeat 2)
  let many3s = replicate 10 3
  let cycleList = take 10 (cycle [1,2,3,4,5])
  let listTimes2 = [x*2 | x <- [1..10]]
  let listTimes3 = [x*3 |x <- [1..20], x*3 <= 50]
  let divisBy8N13 = [x | x <- [1..500] , mod x 13 == 0, mod x 9 == 0]
  let sortedList = sort[9,1,8,3,4,7,6]
  let sumOfLists = zipWith (+) [1,2,3,4,5] [6,7,8,10]
  let listBiggerThan5 = filter (>5) sumOfLists
  let evensUpTo20 = takeWhile (<= 20) [2,4..]
  let multOfList = foldl (*) 1 [2,3,4,5]
  putStrLn("newlist = " ++ show(newList))
  putStrLn("prodPrimes = " ++ show(prodPrimes))
  putStrLn("zeroToTen = " ++ show(zeroToTen))
  putStrLn("evenList = " ++ show(evenList))
  putStrLn("letterList = " ++ show(letterList))
  -- putStrLn("infinPow10 = " ++ show(infinPow10))  endless loop
  putStrLn("many2s = " ++ show(many2s))
  putStrLn("many3s = " ++ show(many3s))
  putStrLn("cycleList = " ++ show(cycleList))
  putStrLn("listTimes2 = "++ show(listTimes2))
  putStrLn("listTimes3 = " ++ show(listTimes3))
  putStrLn("divisBy8N13 = " ++ show(divisBy8N13))
  putStrLn("sortedList = " ++ show(sortedList))
  putStrLn("sumOfLists = " ++ show(sumOfLists))
  putStrLn("listBiggerThan5 = " ++ show(listBiggerThan5))
  putStrLn("evensUpTo20 = " ++ show(evensUpTo20))
  putStrLn("multOfList = " ++ show(multOfList))
  -- list comprehension
  let pow3List =  [3^n | n <- [1..10]]
  let pow3ListDiv9 = [3 ^n | n <- [1..10],  3^n `mod` 9  == 0]
  let multTable = [[x * y | y <- [1..10]] | x <- [1..10]]
  putStrLn("pow3List = " ++ show(pow3List))
  putStrLn("pow3ListDiv9 = " ++ show(pow3ListDiv9))
  putStrLn("multTable = " ++ show(multTable))


-- tuples
test_tuple = do
  let randTuple = (1, "Random tuple")
  let bobSmith = ("Bob Smith", 52)
  let bobsName = fst bobSmith
  let bobsAge = snd bobSmith
  let names = ["Bob", "Mary", "Tom"]
  let addresses = ["Bochum", "Berlin", "Baku"]
  let namesNAddress = zip names addresses
  putStrLn("randTuple = " ++ show(randTuple))
  putStrLn("bobSmith = " ++ show(bobSmith))
  putStrLn("bobsName = " ++ show(bobsName))
  putStrLn("bobsAge = " ++ show(bobsAge))
  putStrLn("namesNAddress = " ++ show(namesNAddress))

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

-- custom types
data Customer = Customer String String Double deriving Show

getBalance :: Customer -> Double
getBalance (Customer _ _ b) = b


data RPS= Rock | Paper | Scissors
shoot :: RPS -> RPS -> String
shoot Paper Rock = "Paper Beats Rock"
shoot Rock Scissors = "Rock Beats Scissors"
shoot Scissors Paper = "Scissors Beat Paper"
shoot Scissors Rock = "Scissors Loses To Rock"
shoot Paper Scissors = "Paper Loses to Scissors"
shoot Rock Paper = "Rock Loses to Paper"
shoot _ _ = "Error"


data Shape =  Circle Float Float Float
            | Rectangle Float Float Float Float
            deriving (Show)

area :: Shape -> Float
area (Circle _ _ r) = pi * r ^ 2
area (Rectangle x y x2 y2) = (abs (x2 - x)) * (abs (y2 -y))


data Employee = Employee { name:: String ,
                   position:: String ,
                   idNum:: Int} deriving (Eq, Show)


data ShirtSize = S | M | L
instance Eq ShirtSize where
  S == S = True
  M == M = True
  L == L = True
  _ == _ = False

instance Show ShirtSize where
  show S = "Small"
  show M = "Medium"
  show L = "Large"

-- did not work
-- class MyEq a where
--   areEqual :: a -> a -> Bool
--
-- class MyEq ShirtSize where
--   areEqual S S = True
--   areEqual M M = True
--   areEqual L L = True
--   areEqual _ _ = False

test_customTypes = do
  let tomSmith = Customer "Tom Smith" "123 Main St" 20.50
  let tomSmithBalance = getBalance tomSmith
  putStrLn("tomSmith = " ++ show tomSmith)
  putStrLn("tomSmith balance = " ++ show tomSmithBalance)
  putStrLn("")
  putStrLn(shoot Paper Rock)
  putStrLn(shoot Rock Scissors)
  putStrLn(shoot Scissors Paper)
  putStrLn(shoot Scissors Rock)
  putStrLn(shoot Paper Scissors)
  putStrLn(shoot Rock Paper)
  putStrLn("")
  putStrLn . show $ 1 + 2
  let c = Circle 10 20 30
  let r = Rectangle 10 20 30 40
  let areaOfCircle = area c
  let areaOfRectangle = area r
  putStrLn("c = " ++ show c)
  putStrLn("r = " ++ show r)
  putStrLn("areaOfCircle = " ++ show areaOfCircle)
  putStrLn("areaOfRectangle = " ++ show areaOfRectangle)
  let emp1 = Employee {name = "foo" , position = "HR", idNum = 1000}
  let emp2 = Employee {name = "bar", position = "Programmer", idNum = 1001}
  putStrLn("emp1 = " ++ show emp1)
  putStrLn("emp2 = " ++ show emp2)
  putStrLn("emp1 == emp2 = " ++ show(emp1 == emp2))
  let smallAvail = S `elem` [S,M,L]
  let theSize = show S
  putStrLn("smallAvail = " ++ show smallAvail)
  putStrLn("theSize = " ++ theSize)
  -- putStrLn(show(MyEq M M ))





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
