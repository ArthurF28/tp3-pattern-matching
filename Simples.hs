module Main where

fatorial :: Integer -> Integer
fatorial 0 = 1
fatorial n = n * fatorial (n - 1)

ehVogal :: Char -> Bool
ehVogal 'a' = True
ehVogal 'e' = True
ehVogal 'i' = True
ehVogal 'o' = True
ehVogal 'u' = True
ehVogal _   = False

tamanho :: [a] -> Int
tamanho []     = 0
tamanho (_:xs) = 1 + tamanho xs

trocar :: (a, b) -> (b, a)
trocar (x, y) = (y, x)

valorOuPadrao :: a -> Maybe a -> a
valorOuPadrao padrao Nothing  = padrao
valorOuPadrao _      (Just x) = x

descricao :: Int -> String
descricao 0 = "zero"
descricao 1 = "um"
descricao _ = "outro"

tamanhoIf :: [a] -> Int
tamanhoIf xs = if null xs then 0 else 1 + tamanhoIf (drop 1 xs)

tamanhoGuardas :: [a] -> Int
tamanhoGuardas xs
  | null xs   = 0
  | otherwise = 1 + tamanhoGuardas (drop 1 xs)

main :: IO ()
main = do
  print (fatorial 5)
  print (map ehVogal "haskell")
  print (tamanho [10, 20, 30 :: Int])
  print (trocar (1 :: Int, "a"))
  print (valorOuPadrao 0 (Just (7 :: Int)))
  print (valorOuPadrao 0 (Nothing :: Maybe Int))
  print (map descricao [0, 1, 2])
  print (tamanhoIf "abc", tamanhoGuardas "abc")