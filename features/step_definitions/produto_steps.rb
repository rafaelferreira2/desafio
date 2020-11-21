
Então("devo ver suas informações") do
    expect(@produtoPage.produto_nome).to eql @produto[:nome]
    expect(@produtoPage.produto_codigo).to eql @produto[:codigo]
end