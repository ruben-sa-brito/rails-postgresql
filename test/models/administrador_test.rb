require "test_helper"

class AdministradorTest < ActiveSupport::TestCase
    def setup
        @administrador = Administrador.new(nome: "Luiz", email: "lu@gmail.com", senha: "12345")      
    end
    
    test "deve ter o objeto administrador valido" do
        #Arrange
        @administrador = Administrador.new(nome: "Luiz", email: "lu@gmail.com", senha: "12345")
        #Act
        valido = @administrador.valid?
        #Assert
        assert valido
    end    
end 

