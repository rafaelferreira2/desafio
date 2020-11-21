require_relative "./models/produto_model"

FactoryBot.define do

    factory :sanduicheira, class: ProdutoModel do
        nome { "Sanduicheira e Grill Fama FGR01 com Antiaderente – Preto" }
        codigo { "LVL185033" }
        voltagem { "110v" }
        cor { "" }
        tamanho { "" }
    end

    factory :quebra_cabeca, class: ProdutoModel do
        nome { "Quebra-Cabeça Grow Dino Kid - 30 Peças" }
        codigo { "LVL15724525" }
        voltagem { "" }
        cor { "" }
        tamanho { "" }
    end

    factory :camisa, class: ProdutoModel do
        nome { "Camiseta Gonew Básica Fast Feminina" }
        codigo { "LVL14042568" }
        voltagem { "" }
        cor { "branco" }
        tamanho { "gg" }
    end
end