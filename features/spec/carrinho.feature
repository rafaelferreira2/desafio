#language:pt

@carrinho
Funcionalidade: Adicionar produtos ao carrinho
    Para que eu realize o resgate de meus pontos
    Sendo um usuário
    Posso adicionar produtos ao carrinho
    
    @adiciona_produto
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


    @adiciona_unidade
    Esquema do Cenario: Adiciona 3 unidades ao carrinho
        Dado que <codigo_produto> é um produto 
        Quando adiciono 3 unidade desse produto ao carrinho
        Então devo ver o produto selecionado
        E o total de pontos a serem resgatados

        Exemplos:
        | codigo_produto  |
        | "quebra_cabeca" |
        | "camisa"        |
        | "sanduicheira"  |


    @remove_unidade
    Esquema do Cenario: Remove 1 unidade do produto no carrinho
        Dado que <codigo_produto> é um produto 
        Quando adiciono 3 unidade desse produto ao carrinho
        E removo 1 unidade desse produto no carrinho
        Então devo ver o produto selecionado
        E o total de pontos a serem resgatados

        Exemplos:
        | codigo_produto  |
        | "camisa"        |
        | "sanduicheira"  |
        | "quebra_cabeca" |


    @remove_produto
    Esquema do Cenario: Remove produto no carrinho
        Dado que <codigo_produto> é um produto 
        Quando adiciono 1 unidade desse produto ao carrinho
        E removo esse produto
        Então devo ver a mensagem de carrinho vazio "Ainda não existem itens no seu carrinho"

        Exemplos:
        | codigo_produto  |
        | "quebra_cabeca" |
        | "sanduicheira"  |
        | "camisa"        |


    @alerta_cupom  
    Cenario: Valida alerta cupom incorreto
        Dado que "sanduicheira" é um produto 
        Quando adiciono 1 unidade desse produto ao carrinho
        E utilizo o cupom "TESTECUPOM"
        Então devo ver a mensagem de erro "Este cupom não existe!"


    @fecha_pedido
    Cenario: Fecha pedido
        Dado que "camisa" é um produto 
        Quando adiciono 1 unidade desse produto ao carrinho
        E fecho o pedido
        Então devo ver a tela de autenticação
