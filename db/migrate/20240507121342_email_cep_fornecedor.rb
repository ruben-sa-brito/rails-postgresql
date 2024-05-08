class EmailCepFornecedor < ActiveRecord::Migration[7.1]
  def change
    def change
      add_column :fornecedores, :cep, :string, limit: 11
      add_column :fornecedores, :email, :string
    end  
  end
end
