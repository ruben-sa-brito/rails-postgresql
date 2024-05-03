module FornecedoresHelper
    def formata_hora(data)
        return data.strftime("%d/%m/%y %H:%M")
    end    
end
