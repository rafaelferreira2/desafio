
Dado("que {string} é um produto") do |cod_produto|
    @produto = build("#{cod_produto}").to_hash
    # $globalHelpers.autorizar_cookie
end