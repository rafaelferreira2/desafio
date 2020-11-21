class HomePage

    include Capybara::DSL

    def go
        visit '/'
    end

    def busca_produto
        BuscaProduto.new
    end
 
end