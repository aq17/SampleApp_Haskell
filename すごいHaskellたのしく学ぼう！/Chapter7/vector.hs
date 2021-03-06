data Vector a = Vector a a a deriving (Show)

vplus :: (Num a) => Vector a -> Vector a -> Vector a
(Vector i j k) `vplus` (Vector l m n) = Vector (i+l) (j+m) (k+n)

dotProd :: (Num a) => Vector a -> Vector a -> a
(Vector i j k) `dotProd` (Vector l m n) = i*l + j*m + k*n

vmult :: (Num a) => Vector a -> a -> Vector a
(Vector i j k) `vmult` m = Vector (i*m) (j*m) (k*m)

main = do
  print (Vector 3 5 8 `vplus` Vector 9 2 8)
  print (Vector 3 9 7 `vmult` 10)
  print (Vector 4 9 5 `dotProd` Vector 9.0 2.0 4.0)