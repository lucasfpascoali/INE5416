# Questão 1

## Pergunta A: O que são classes primitivas e secundárias no Haskell?

### Classes primitivas

São classes definidas primariamente, isto é, não são definidas a partir de outras classes.

#### Exemplos:

##### Bounded

Estabelece limites mínimos e máximos e que instancia os tipos Int, Char, Bool, (), Ordering e tuples.

###### Métodos

- *minBound*: retorna o limite mínimo para o tipo (a);
- *maxBound*: retorna o limite máximo para o tipo (a);

##### Eq

Trata os métodos de igualdade e desigualdade e instancia todos os tipos, com exceção dos tipos IO e funções.

###### Métodos

- (==): retorna booleano indicando se dois valores do tipo a são iguais (pode ser definido como not (/=));
- (/=): retorna booleano indicando se dois valores do tipo a são diferentes (pode ser definido como not (==));

##### Enum

Trata a enumerabilidade, ou seja, define os métodos de operações sobres tipos sequencialmente ordenados instanciando os tipos (), Bool, Char, Int, Integer, Ordering, Float e Double.

###### Métodos

- succ :: Enum a => a -> a: retorna o sucessor na sequência enumerável;
- pred :: Enum a => a -> a: retorna o predecessor na sequência enumerável;
- toEnum :: Enum a => Int -> a: converte um valor inteiro para o timo enumerável correspondente;
- fromEnum :: Enum a => a -> Int: converte um valor enumerável para um inteiro;
- enumFrom :: Enum a => a -> [a]: gera uma lista infinita a partir do valor passado, aumentando de 1 em 1.
- enumFromThen :: Enum a => a -> a -> [a]: gera uma lista infinita dos dois primeiros valores, determinando o intervalo entre eles.
- enumFromTo :: Enum a => a -> a -> [a]: gera uma lista finita a partir do primeiro valor até o segundo valor.
- enumFromThenTo :: Enum a => a -> a -> a -> [a]: gera uma lista finita a partir do primeiro valor, definindo o segundo valor como passo, até o terceiro valor. 

### Classes secundárias

Denomina-se classes secundárias às classes definidas a partir de outras classes

#### Exemplos:

##### Ord

Define métodos para tipos de dados totalmente ordenados, instanciaando todos os tipos, exceto funções IO e IOError. Ela é subclasse de Eq.

###### Métodos

- compare :: a -> a -> Ordering: retonra um valor especial do tipo Ordering, que pode ser LT (Less Than), EQ (Equal) ou GT (Greater Than);
- (<). (<=), (>=), (>) :: a -> a -> Bool: menor que, menor ou igual que, maior ou igual que, maior que;
max, min :: a -> a -> a: retorna o maior/menor valor entre os dois argumentos;

##### Num

Define os métodos para operações com números e instancia os tipos Int, Integer, Float e Double. Ela é subclasse de Eq e Show.

###### Métodos

- (+), (-), (*) :: a -> a -> a: define adição, subtração e multiplicação;
- negate :: a -> a: retorna o negativo do parâmetro;
- abs :: a -> a: retorna o valor absoluto  do número;

##### Real

Define métodos numéricos de operações. Real instancia os tipos Int, Integer, Float e Double. Ela é subclasse de Num e Ord.

###### Métodos

- toRational :: a -> Rational: converte o número para racional;

## Pergunta B: Breve resumo sobre as classes numéricas em Haskell;

- classe Num: tipos que suportam as operações aritméticas básicas de soma, subtração e multiplicação;
    - Instâncias Típicas: Int, Integer, Float, Double, Complex a, etc.

- classe Real: números que podem ser convertidos exatamente em razão (racionais - Rational);
    - Todo Real é também Num;
    - Uso chave: toRational permite levar valores numéricos para cálculos de precisão arbitrária.

- classe Integral: inteiros "clássicos" com divisão inteira e resto;
    - Todo Integral é um Real;
    - Instâncias Típicas: Int, Integer.

- classe Fractional: aritmética de ponto-flutuante ou tipos racionais, com divisão "verdadeira";
    - Todo Fractional é um Num;
    - Instâncias Típicas: Float, Double, Rational.

- classe RealFrac: tipos fracionários dos quais se extrai a parte inteira e a parte decimal;
    - Combina Real e Fractional;
    - Uso chave: arredondamento e separação da mantissa e parte inteira.

- classe Floating: funções transcendentes (exponencial, trigonométricas, hiperbólicas);
    - Todo Floating é um Fractional;
    - Instâncias Típicas: Float, Double.

- classe RealFloat: informações de baixo nível sobre formatos de ponto-flutuante (IEEE), decomposição de mantissa/expoente, detecção de NaN, ±∞, etc;
    - Combina RealFrac e Floating.

### Hierarquia Resumida

              Num
               │
     ┌─────────┴─────────┐
     │                   │
    Real --.         Fractional
     │      \            │
  Integral   \       ┌───┴───┐
              \      │       │
               \_RealFrac Floating
                     │       │
                     └───────┘
                         │
                     RealFloat

- Fluxo:
    - Todo Integral é Real e Num.
    - Todo Floating é Fractional e Num.
    - RealFrac une Real e Fractional.
    - RealFloat une RealFrac e Floating.

