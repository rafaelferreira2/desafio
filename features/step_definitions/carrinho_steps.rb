
Quando("adiciono {int} unidade desse produto ao carrinho") do |quantidade_produto|
    @homePage.busca_produto.busca_por_nome(@produto[:nome])
    @listaBuscaPage.produto_alvo(@produto[:nome])

    @pontos_unidade_produto = @produtoPage.add_produto(@produto)
    @itensCarrinhoPage.add_quantidade(quantidade_produto)
    @total_pontos_produto = @pontos_unidade_produto * quantidade_produto
end

Quando("acrescento {int} unidade") do |quantidade|    
    @qtd_produto_atualizada = @itensCarrinhoPage.add_quantidade(quantidade)
end

Quando("removo {int} unidade desse produto no carrinho") do |quantidade|    
    @qtd_produto_atualizada = @itensCarrinhoPage.remove_quantidade(quantidade)
end

Quando("removo esse produto") do
    @itensCarrinhoPage.remove_produto
end

Quando("fecho o pedido") do
    @resumoPedidoPage.fecha_pedido
end

Então("devo ver o produto selecionado") do
    expect(@itensCarrinhoPage.nome_produto_carrinho).to eql @produto[:nome]
    expect(@itensCarrinhoPage.pontos_produto_carrinho).to eql @total_pontos_produto
end

Então("o total de pontos a serem resgatados") do
    expect(@resumoPedidoPage.total_pontos_pedido).to eql @total_pontos_produto
end
  
Então("devo ver a mensagem de carrinho vazio {string}") do |msg_esperada|
    expect(@itensCarrinhoPage.msg_carrinho_vazio).to have_text msg_esperada
end
  
Então("devo ver a tela de autenticação") do
    expect(@resumoPedidoPage.page_autentica_exibida).to be true
end