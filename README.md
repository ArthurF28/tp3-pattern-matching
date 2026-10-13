# TP3 – Pattern Matching na Definição de Funções (Haskell)

Trabalho da disciplina de Linguagens de Programação

**Dupla:** Arthur de Oliveira Ferreira e Isadora Spode Cardoso

**Tópico:** D – Combinação de padrões (Pattern Matching) na definição de funções

**Vídeo:** (adicionar link após publicar)

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

## Resposta esperada

120

[False,True,False,False,True,False,False]

3

("a",1)

7

0

["zero","um","outro"]

(3,3)

## Referências

- 
- 
- 
- 