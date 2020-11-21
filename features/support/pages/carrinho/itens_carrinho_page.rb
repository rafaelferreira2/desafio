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

    def add_quantidade(qtd_adicionada)
        if(qtd_adicionada > 1)
            cliques = qtd_adicionada - 1
            cliques.times do
                sessao_qtd_produto.find('div.cart-list__quantity-box span.icon-plus').click
                $globalHelpers.checkpoint
            end
        end
    end

    def remove_quantidade(qtd_adicionada)
        if(qtd_adicionada > 1)
            cliques = qtd_adicionada - 1
            cliques.times do
                sessao_qtd_produto.find('div.cart-list__quantity-box span.icon-minus').click
                $globalHelpers.checkpoint
            end
        end
    end

    def remove_produto
        sessao_qtd_produto.find('a.cart-list__remove-item').click
        $globalHelpers.checkpoint
    end

    def pontos_produto_carrinho
        pontos_produto = (lista_produtos_carrinho[0].find('div.cart-list__prodvalue span.cart-list__value').text).sub(".","")
        pontos_produto.to_i
    end

    def msg_carrinho_vazio
        find('#CC-cart-empty h2').text
    end

end