class Fornecedor < ApplicationRecord
    belongs_to :fornecedor_tipo
    validates_presence_of :nome, :cnpj, :fornecedor_tipo_id
    validates_format_of :email, with: URI::MailTo::EMAIL_REGEXP
    validates_uniqueness_of :email, case_sensitive: false
end
