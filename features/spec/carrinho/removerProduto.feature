#language:pt

Funcionalidade: Remove produtos do carrinho
    Para que eu realize o resgate de meus pontos
    Sendo um usuário
    Posso adicionar remover produtos do carrinho
    
    @remove
    Esquema do Cenario: Remove produto ao carrinho
        Dado que <codigo_produto> é um produto 
        Quando adiciono 1 unidade desse produto ao carrinho
        E removo esse produto
        Então devo ver a mensagem de carrinho vazio "Ainda não existem itens no seu carrinho"

        Exemplos:
        | codigo_produto  |
        | "sanduicheira"  |
        | "quebra_cabeca" |
        | "camisa"        |