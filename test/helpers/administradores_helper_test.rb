require "test_helper"

class AdministradoresHelperTest < ActionDispatch::TestCase
    include AdministradoresHelper 
    
    test "primeiro_administrador com administrador cadastrado" do
        #Arrange
        administrador = administradores(:one)
        #act
        adm_helper = primeiro_administrador
        #assert
        assert_equal administrador, adm_helper
    end    
end