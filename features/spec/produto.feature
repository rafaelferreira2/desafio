#language:pt

@produtos
Funcionalidade: Busca de produtos
    Para que eu possa consultar produtos
    Sendo um usuário
    Posso buscar produtos

    @busca_nome
    Esquema do Cenario: Busca de produto
        Dado que <codigo_produto> é um produto 
        Quando busco por esse produto
        Então devo ver suas informações

        Exemplos:
        | codigo_produto  |
        | "quebra_cabeca" |
        | "sanduicheira"  |
        | "camisa"        |
        
    @busca_na_lista
    Esquema do Cenario: Busca de produto dropdown
        Dado que <codigo_produto> é um produto 
        Quando busco esse produto pelo nome
        Então devo ver suas informações

        Exemplos:
        | codigo_produto  |
        | "quebra_cabeca" |
        | "sanduicheira"  |
        | "camisa"        |