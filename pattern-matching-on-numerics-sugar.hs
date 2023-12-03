-- Pattern matching on numeric or string literals desugars to equality tests.

-- f 0 = "one"
-- f _ = "two"
-- becomes

f :: Int -> [Char]
f x = if x == 0 then "one" else "two"

-- which further becomes
f' :: Int -> [Char]
f' x = case x == 0 of
  True -> "one"
  False -> "two"

main = do
  let test1 = 0
  let test2 = 1
  putStrLn $ "f " ++ show test1 ++ " = " ++ f test1
  putStrLn $ "f " ++ show test2 ++ " = " ++ f test2
  putStrLn $ "f' " ++ show test1 ++ " = " ++ f' test1
  putStrLn $ "f' " ++ show test2 ++ " = " ++ f' test2
