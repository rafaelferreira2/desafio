class ProdutoPage
    include Capybara::DSL

    def form_produto
        find('div.product-details div.product-details__infos-catalog')
    end

    def add_produto(produto)
        $globalHelpers.checkpoint
        
        infos_produto(produto)
        pontos_unidade_produto = self.produto_pontos
        click_button 'Adicionar ao carrinho'

        pontos_unidade_produto.to_i
    end

    def infos_produto(produto)
        seleciona_voltagem(produto[:voltagem])
        seleciona_cor(produto[:cor])
        seleciona_tamanho(produto[:tamanho])
    end

    def seleciona_voltagem(voltagem)
        if(voltagem != "" )
            select = form_produto.find('#CC-prodDetails-sku-type_other_v_voltage')
            select.find('option', text: voltagem).select_option
        end
    end

    def seleciona_cor(cor)
        if(cor != "" )
            select = form_produto.find('#CC-prodDetails-sku-type_clothes_v_color')
            select.find('option', text: cor).select_option
        end
    end

    def seleciona_tamanho(tamanho)
        if(tamanho != "" )
            select = form_produto.find('#CC-prodDetails-sku-type_clothes_v_size')
            select.find('option', text: tamanho).select_option
        end
    end

    def produto_nome
        form_produto.find('div.header-info-catalog h2.h2').text
    end

    def produto_codigo
        form_produto.find('div.header-info-catalog #span-productId').text
    end

    def produto_pontos
        pontos = form_produto.all('div.partners-tab__content-price-real span')[0].text
        pontos.sub(".","")
    end

end