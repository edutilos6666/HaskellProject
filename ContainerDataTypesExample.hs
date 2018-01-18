module ContainerDataTypesExample (test_list, test_tuple) where
  import Data.List 
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
