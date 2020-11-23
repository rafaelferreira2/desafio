
Quando("adiciono {int} unidade desse produto ao carrinho") do |quantidade_produto|
    @homePage.busca_produto.busca_por_nome(@produto[:nome])
    @listaBuscaPage.produto_alvo(@produto[:nome])

    @pontos_unidade_produto = @produtoPage.add_produto(@produto)
    qtd_produto_atualizada = @itensCarrinhoPage.add_quantidade(quantidade_produto)
    @total_pontos_produto = @itensCarrinhoPage.total_pontos_produto(@pontos_unidade_produto, qtd_produto_atualizada)
end

Quando("removo {int} unidade desse produto no carrinho") do |quantidade|    
    qtd_produto_atualizada = @itensCarrinhoPage.remove_quantidade(quantidade)
    @total_pontos_produto = @itensCarrinhoPage.total_pontos_produto(@pontos_unidade_produto, qtd_produto_atualizada)
end

Quando("removo esse produto") do
    @itensCarrinhoPage.remove_produto
end

Quando("fecho o pedido") do
    @resumoPedidoPage.fecha_pedido
end

Quando("utilizo o cupom {string}") do |cupom|
    @resumoPedidoPage.aplica_cupom(cupom)
end