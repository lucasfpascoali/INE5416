| Aspecto                | Haskell 98 / GHC                   | O’Haskell                                                              |
| ---------------------- | ---------------------------------- | ---------------------------------------------------------------------- |
| **Polimorfismo**       | Paramétrico + type classes         | + Subtipagem estática de registros                                     |
| **Objetos / Estado**   | Modelado via monads e type classes | Objetos monádicos com métodos e encapsulamento                         |
| **Records**            | Records simples sem subtipagem     | Records “first-class” com subtipagem                                   |
| **Inferência de tipo** | Hindley-Milner padrão              | Estendido para subtipos de registros                                   |
| **Manutenção**         | Ativamente desenvolvido (GHC)      | Última versão em 2001, hoje descontinuado (veja Timber) ([Haskell][1]) |

[1]: https://www.haskell.org/haskellwiki/O%27Haskell "O'Haskell - HaskellWiki"
