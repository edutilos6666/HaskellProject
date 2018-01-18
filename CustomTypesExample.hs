module CustomTypesExample (test_customTypes, Customer) where
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
