module OperatorsExample(test_arithmeticOps, test_mathFunctions,
test_logicalOps) where
test_arithmeticOps = do
    let x = toInteger 10
    let y = toInteger 3
    let add = x + y
    let sub = x - y
    let mult = x * y
    let div2 = quot x y
    let modulo = mod x y
    let remainder = rem x y
    putStrLn("<<Arithmetic Operators>>")
    putStrLn("x = " ++ show x ++ " and y = " ++ show y)
    putStrLn("x + y = " ++ show add)
    putStrLn("x - y = " ++ show sub)
    putStrLn("x * y = " ++ show mult)
    -- putStrLn("x / y = " ++ show div1)
    putStrLn("quot x y = " ++ show div2)
    putStrLn("mod x y = " ++ show modulo)
    putStrLn("rem x y = " ++ show remainder)


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
