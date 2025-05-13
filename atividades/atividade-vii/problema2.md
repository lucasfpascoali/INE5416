# Questão 2

## Polimorfismo Universal

### Polimorfismo por Inclusão

- **Definição**: permite usar um objeto de um tipo mais específico onde se espera um tipo mais genérico (superclasse ou interface).

- **Exemplo (Golang)**: 
```golang
    import "fmt"

    type Animal interface {
        Fala()
    }

    type Cachorro struct {
    }

    func (a *Cachorro) Fala() {
        fmt.Println("Au!")
    }

    func fazFalar(a *Animal) {
        a.Fala()
    }

    fazFalar(&Cachorro{})
```

### Polimorfismo Paramétrico

- **Definição**: escreve código genérico que funciona com qualquer tipo, sem conhecer detalhes internos. Os parâmetros de tipo não são instanciados até o uso.

- **Exemplo (Haskell)**:

```haskell
    length :: [a] -> Int
    -- 'a' pode ser lista de Int, Char, String, etc
    length [] = 0
    length (x:xs) = 1 + length xs

    length [1, 2, 3] -- 3
    length "olá" -- 3
```

## Polimorfismo Ad-Hoc

### Polimorfismo de Sobrecarga

- **Definição**: mesmo nome de função/operador atua de formas diferentes, dependendo dos tipos dos argumentos.

- **Exemplo (C++)**:
```cpp
    int add(int x, int y) { return x + y; }
    double add(double x, double y) { return x + y; }
    add(2, 3); // usa add(int, int)
    add(2.5, 3.1); // usa add(double, double)
```

### Polimorfismo de Coerção

- **Definição**: o compilador insere automaticamente conversões de tipo para "encaixar" chamadores e parâmetros.

- **Exemplo (C)**:
```c
    void imprimeDouble(double x) { printf("%f\n", x); }
    imprimeDouble(5); // 5 é "coercido"para 5.0
```

## Resumo das Diferenças

| Característica        | Universal                                                      | Ad-Hoc                                                     |
| --------------------- | -------------------------------------------------------------- | ---------------------------------------------------------- |
| **Mecanismo**         | Generalização genérica                                         | Implementações específicas                                 |
| **Diversão interna**  | inclusões de hierarquia ou parâmetros de tipo                  | múltiplas definições (overload) ou conversões automáticas  |
| **Segurança de tipo** | forte (checagem em tempo de compilação)                        | potencialmente menos rígida (coerções implícitas)          |
| ** *Exemplo típico**    | Generics em Java/C#, templates em C++, type classes em Haskell | Sobrecarga de métodos, conversão implícita entre numéricos |

Cada estilo tem seu lugar:

- Paramétrico promove alta reutilização sem duplicar código.

- Inclusão modela hierarquias naturais de tipos.

- Sobrecarga dá conveniência ao usar o mesmo nome em contextos diferentes.

- Coerção facilita interações simples, mas pode ocultar erros se usada sem cuidado.