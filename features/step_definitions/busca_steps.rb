
Quando("busco esse produto pelo nome") do
    @homePage.busca_produto.busca_dropdown(@produto[:nome])
    @produtoPage.infos_produto(@produto)
    @valorUnidadeProduto = @produtoPage.produto_pontos
end

Quando("busco por esse produto") do
    @homePage.busca_produto.busca_por_nome(@produto[:nome])
    @listaBuscaPage.produto_alvo(@produto[:nome])
    @produtoPage.infos_produto(@produto)
    @valorUnidadeProduto = @produtoPage.produto_pontos
end