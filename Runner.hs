module Runner where
import qualified OperatorsExample
import qualified DataTypesExample
import qualified ContainerDataTypesExample
import qualified FunctionsExample
import qualified EnumExample
import qualified CustomTypesExample
import qualified FileIOExample
main = do
    putStrLn "<<Data Types>>"
    DataTypesExample.test_dataTypes
    putStrLn ""
    putStrLn "<<Arithmetic Operators>>"
    OperatorsExample.test_arithmeticOps
    putStrLn ""
    putStrLn "<<Math Functions>>"
    OperatorsExample.test_mathFunctions
    putStrLn ""
    putStrLn "<<Logical Operators>>"
    OperatorsExample.test_logicalOps
    putStrLn ""
    putStrLn "<<List Example>>"
    ContainerDataTypesExample.test_list
    putStrLn ""
    putStrLn "<<Tuple Example>>"
    ContainerDataTypesExample.test_tuple
    putStrLn "<<FunctionsExample: test_function1()>>"
    FunctionsExample.test_function1
    putStrLn ""
    putStrLn "<<FunctionsExample: test_function2()>>"
    FunctionsExample.test_function2
    putStrLn ""
    putStrLn "<<FunctionsExample: test_function3()>>"
    FunctionsExample.test_function3
    putStrLn ""
    putStrLn "<<FunctionsExample: test_function4()>>"
    FunctionsExample.test_function4
    putStrLn ""
    putStrLn "<<FunctionsExample: test_function5()>>"
    FunctionsExample.test_function5
    putStrLn ""
    putStrLn "<<Enum Example>>"
    EnumExample.test_enum
    putStrLn ""
    putStrLn "<<Custom Types Example>>"
    CustomTypesExample.test_customTypes
    putStrLn ""
    putStrLn "<<File IO Example>>"
    FileIOExample.test_IO
    putStrLn ""
