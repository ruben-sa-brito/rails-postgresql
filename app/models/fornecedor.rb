class Fornecedor < ApplicationRecord
    validates_presence_of :nome, :cnpj
    validates_format_of :email, with: URI::MailTo::EMAIL_REGEXP
    validates_uniqueness_of :email, case_sensitive: false
end
