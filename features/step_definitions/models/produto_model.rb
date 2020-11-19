class ProdutoModel
    attr_accessor :nome, :pontos, :voltagem, :codigo, :ean
    
    def to_hash
        {
            nome: @nome,
            pontos: @pontos,
            voltagem: @voltagem,
            codigo: @codigo,
            ean: @ean
        }
    end
end