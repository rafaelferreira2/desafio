class ItensCarrinhoPage
    include Capybara::DSL

    def box
        find('div.stack-box')
    end

    def lista_produtos_carrinho
        box.all('#CC-cart-list div[id^=cc-cart-item-]')
    end

    def infos_produto
        lista_produtos_carrinho[0].find('div.cart-list__prodinfo')
    end

    def nome_produto_carrinho
        infos_produto.find('a[id^=name-ci]').text
    end

    def sessao_qtd_produto
        lista_produtos_carrinho[0].find('div.cart-list__prodquantity')
    end

    def qtd_produto
        sessao_qtd_produto.find('span[id^=qtd-ci]').text
    end

    def atualiza_qtd_produto(qtd_inicial)
        qtd_atual = qtd_inicial

        while (qtd_inicial == qtd_atual) do
            sleep 5
            qtd_atual = self.qtd_produto
        end
        qtd_atual
    end

    def add_quantidade(qtd_adicionada)
        qtd_inicial = self.qtd_produto
        qtd_atual = self.qtd_produto

        if(qtd_adicionada > 1)
            cliques = qtd_adicionada - 1
            cliques.times do 
                sessao_qtd_produto.find('div.cart-list__quantity-box span.icon-plus').click
                qtd_atual = atualiza_qtd_produto(qtd_atual)
            end
        end
        qtd_atual
    end

    def remove_quantidade(qtd_removida)
        qtd_inicial = self.qtd_produto
        qtd_atual = self.qtd_produto

        if(qtd_removida >= 1)
            qtd_removida.times do
                sessao_qtd_produto.find('div.cart-list__quantity-box span.icon-minus').click
                qtd_atual = atualiza_qtd_produto(qtd_atual)
            end
        end
        qtd_atual
    end

    def remove_produto
        btn_remove = sessao_qtd_produto.find('a.cart-list__remove-item')
        if(btn_remove.visible?)
            btn_remove.click
        end
    end

    def pontos_produto_carrinho
        pontos_produto = (lista_produtos_carrinho[0].find('div.cart-list__prodvalue span.cart-list__value').text).sub(".","")
        pontos_produto.to_i
    end

    def total_pontos_produto(unidade, quantidade)
        unidade.to_i * quantidade.to_i
    end

    def msg_carrinho_vazio
        find('#CC-cart-empty h2').text
    end

end