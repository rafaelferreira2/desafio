class ListaBuscaPage
    include Capybara::DSL

    def div_lista
        find('#browse-listing')
    end

    def lista_produtos
        div_lista.find('#product-grid')
    end

    def produto_alvo(alvo)
        lista_produtos.find('div.product-list__element div.card-name', text: alvo).click
    end

end