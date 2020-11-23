
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
  
Então("devo ver a mensagem de erro {string}") do |msg_esperada|
    expect(@resumoPedidoPage.alerta_topo).to eql msg_esperada
end