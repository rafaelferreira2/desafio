class BuscaProduto
    include Capybara::DSL

    def base
        page.find('#main')
    end

    def topo
        base.find('div.header__content div.header__section')
    end

    def sessao_busca
        topo.find('#search-container')
    end

    def digita_busca(busca)
        sessao_busca.find('#input-search').set busca
    end

    def btn_busca
        sessao_busca.find('#span-searchIcon').click
    end

    def busca_dropdown(busca)
        digita_busca(busca)
        lista = sessao_busca.find('#typeaheadDropdown')
        lista.find('li.typeaheadProduct', text: busca).click
    end

    def busca_por_nome(busca)
        digita_busca(busca)
        self.btn_busca
    end

end