module Main where

distinct :: [Int] -> [Int]
distinct = go []
  where
    go _    []     = []
    go seen (x:xs)
      | x `elem` seen = go seen xs
      | otherwise     = x : go (x : seen) xs

main :: IO ()
main = do
  print (distinct [1, 1, 2])
  print (distinct [1, 2, 1, 1, 3, 2])
  print (distinct [])