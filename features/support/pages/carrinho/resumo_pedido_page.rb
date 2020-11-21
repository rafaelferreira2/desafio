class ResumoPedidoPage
    include Capybara::DSL

    def box
        find('section.cart-summary')
    end

    def detalhe_pedido
        box.find('div.cart-summary__details')
    end

    def total_pontos_pedido
        pontos_pedido = (detalhe_pedido.find('form.form div.checkbox label.label__radio').text).sub(".","")
        pontos_pedido.to_i
    end

    def calcula_total_pontos(valor_unitario, quantidade)
        total_pontos = valor_unitario.to_i * quantidade.to_i
    end

    def fecha_pedido
        box.find('#ctaCheckout').click
    end

    def page_autentica_exibida
        page.find('#username').visible?
    end

end