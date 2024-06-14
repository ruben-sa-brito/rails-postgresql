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

    test "deve ser um nome invalido" do
        #Arrange
        @administrador.nome = ""
        #Act
        #Assert
        assert_not @administrador.valid?
    end  
     
    test "deve ser um senha invalida" do
        #Arrange
        @administrador.senha = ""
        #Act
        #Assert
        assert_not @administrador.valid?
    end  
    
    test "deve ser um nome invalido(limites de caracteres excedido)" do
      #Arrange
      @administrador.nome = "a"*151
      #Act
      #Assert
      assert_not @administrador.valid?
  end 
end 

