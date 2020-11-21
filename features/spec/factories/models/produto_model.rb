class ProdutoModel
    attr_accessor :nome, :codigo, :voltagem, :cor, :tamanho
    
    def to_hash
        {
            nome: @nome,
            codigo: @codigo,
            voltagem: @voltagem,
            cor: @cor,
            tamanho: @tamanho
        }
    end
end