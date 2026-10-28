# TP3 – Pattern Matching na Definição de Funções (Haskell)

Trabalho da disciplina de Linguagens de Programação

**Dupla:** Arthur de Oliveira Ferreira e Isadora Spode Cardoso

**Tópico:** D – Combinação de padrões (Pattern Matching) na definição de funções

**Vídeo:** https://www.youtube.com/watch?v=iHDiuH7zU9k

## Conceito

Em Haskell, uma função pode ser definida por **várias equações**, cada uma com
padrões diferentes nos parâmetros. Na chamada, as equações são testadas **de cima
para baixo**, e a primeira cujos padrões casam com os argumentos é a escolhida.

Tipos de padrão:

- **Literais:** `0`, `'a'`, `True` — casam apenas com aquele valor.
- **Construtores:** `[]`, `(x:xs)`, `Just x`, `(a, b)` — decompõem o valor e
  associam variáveis aos seus componentes.
- **Variáveis:** `n`, `xs` — casam com qualquer valor e dão um nome a ele.
- **Curinga:** `_` — casa com qualquer valor sem nomeá-lo.

Pontos importantes:

- A **ordem** das equações importa.
- Se nenhuma equação casar, ocorre erro em execução.
- Pattern matching é uma alternativa a `if/else` e a guardas (`|`), e costuma
  deixar a definição mais declarativa, pois cada caso aparece como uma equação.

## Exemplo

Veja [`Simples.hs`](Simples.hs): fatorial, tamanho de lista, `Maybe`, tuplas e a
comparação com `if/else` e guardas.

```
runghc Simples.hs
```

## Saída esperada

```
120
[False,True,False,False,True,False,False]
3
("a",1)
7
0
["zero","um","outro"]
(3,3)
```

## Exercício do CodeWars

**Kata:** [Remove duplicates from list](https://www.codewars.com/kata/57a5b0dfcf1fa526bb000118/haskell)

Solução completa em [`Kata.hs`](Kata.hs).

```
runghc Kata.hs
```

### Enunciado

Dada uma lista de números não negativos, devolver outra lista sem repetições,
mantendo a ordem da primeira aparição de cada número.
Exemplo: `[1,2,1,1,3,2]` vira `[1,2,3]`.

### Raciocínio

Percorremos a lista de entrada carregando um acumulador `seen` com os números
já vistos. Em cada passo olhamos o primeiro elemento `x`: se ele já está em
`seen`, descartamos e seguimos; se não está, ele entra no resultado e também em
`seen`. Quando a entrada acaba, devolvemos a lista vazia.

### Onde o tópico aparece

A função auxiliar `go` é definida por **duas equações**, testadas de cima para baixo:

- `go _ []`: `[]` é um **construtor** e `_` é o **curinga**, que
  ignora o acumulador. É o caso base.
- `go seen (x:xs)`: `(x:xs)` é o **construtor** `(:)`, que separa cabeça e
  resto; `seen`, `x` e `xs` são **padrões de variável**. Essa equação só casa
  com lista não vazia, então nunca precisamos de `head` ou `tail`.

Dentro da segunda equação usamos **guardas** (`x `elem` seen` e `otherwise`).
O pattern matching decide a **forma** da lista (vazia ou não), e as guardas
decidem o **valor** (elemento repetido ou novo).

## Ferramentas de apoio

- ANTHROPIC. *Claude*. Utilizado como apoio na
  organização do repositório e na revisão das explicações e dos exemplos.
  Conversa realizada em 24 out. 2026. Disponível em: https://claude.ai.

## Referências

- HUTTON, Graham. Programming in Haskell. 2. ed. Cambridge University Press, 2016. (cap. 4, Defining functions)
- MARLOW, Simon (ed.). Haskell 2010 Language Report. 2010. Seção 3.17, Pattern Matching. https://www.haskell.org/onlinereport/haskell2010/
- Codewars. Remove duplicates from list. https://www.codewars.com/kata/57a5b0dfcf1fa526bb000118/haskell
