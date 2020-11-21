#language:pt

Funcionalidade: Adicionar produtos ao carrinho
    Para que eu realize o resgate de meus pontos
    Sendo um usuário
    Posso adicionar produtos ao carrinho
    
    
    Esquema do Cenario: Adiciona produto ao carrinho
        Dado que <codigo_produto> é um produto 
        Quando adiciono 1 unidade desse produto ao carrinho
        Então devo ver o produto selecionado
        E o total de pontos a serem resgatados

        Exemplos:
        | codigo_produto  |
        | "sanduicheira"  |
        | "quebra_cabeca" |
        | "camisa"        |
    

    Esquema do Cenario: Adiciona 2 unidades ao carrinho
        Dado que <codigo_produto> é um produto 
        Quando adiciono 2 unidade desse produto ao carrinho
        Então devo ver o produto selecionado
        E o total de pontos a serem resgatados

        Exemplos:
        | codigo_produto  |
        | "quebra_cabeca" |
        | "camisa"        |
        | "sanduicheira"  |

    @remove_unidade
    Esquema do Cenario: Remove 1 unidade do produto ao carrinho
        Dado que <codigo_produto> é um produto 
        Quando adiciono 2 unidade desse produto ao carrinho
        E removo 1 unidade desse produto no carrinho
        Então devo ver o produto selecionado
        E o total de pontos a serem resgatados

        Exemplos:
        | codigo_produto  |
        | "quebra_cabeca" |
        | "camisa"        |
        | "sanduicheira"  |

    @fecha_pedido
    Cenario: Fecha pedido
        Dado que "camisa" é um produto 
        Quando adiciono 1 unidade desse produto ao carrinho
        E fecho o pedido
        Então devo ver a tela de autenticação
