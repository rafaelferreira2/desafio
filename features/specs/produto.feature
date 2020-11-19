# language:pt

@produto
Funcionalidade: Chekout
    Para que eu possa realizar a troca de pontos
    Sendo um usuário
    Posso adicionar produtos ao carrinho

    @adicionaProduto
    Cenario: Adiciona produto no carrinho
        Dado que "teste" é um produto 
        Quando adiciono ele ao carrinho
        Então teste