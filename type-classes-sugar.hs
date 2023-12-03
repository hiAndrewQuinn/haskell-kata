-- Typeclasses desugar to records of functions under the hood where the compiler implicitly threads the records throughout the code for you.

-- class Monoid m where
--   mappend' :: m -> m -> m
--   mempty' :: m
-- becomes

data MyMonoid m = MyMonoid
  { mappend' :: m -> m -> m,
    mempty' :: m
  }

-- instance Monoid Int where
--   mappend' = (+)
--   mempty' = 0
-- becomes

intMonoid :: MyMonoid Int
intMonoid =
  MyMonoid
    { mappend' = (+),
      mempty' = 0
    }

-- f :: Monoid m => m -> m
-- f x = mappend x x
-- becomes

f :: MyMonoid m -> m -> m
f (MyMonoid p z) x = p x x

main :: IO ()
main = do
  let monoidInstance = intMonoid
  let testValue = (5 :: Int)
  let result = f monoidInstance testValue
  putStrLn $ "f " ++ show testValue ++ " = " ++ show result
