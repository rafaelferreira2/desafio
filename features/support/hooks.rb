Before do

    if (ENV["BROWSER"] == "chrome")
        page.current_window.resize_to(1366, 768)
    end

    @homePage = HomePage.new
    @produtoPage = ProdutoPage.new
    @listaBuscaPage = ListaBuscaPage.new
    @itensCarrinhoPage = ItensCarrinhoPage.new
    @resumoPedidoPage = ResumoPedidoPage.new
    $globalHelpers = Helpers.new

    @homePage.go
end


After do |scenario|
    tempShot = page.save_screenshot("log/tempShot.png")
    screeshot = Base64.encode64(File.open(tempShot).read)
    embed(screeshot, "image/png", "Print_da_tela")
end