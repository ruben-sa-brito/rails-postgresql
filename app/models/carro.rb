class Carro < ApplicationRecord
    validates_presence_of :nome, :modelo, :ano
    validates_length_of :nome, minimum: 3, maximum: 100
    validates_numericality_of :ano, greater_than_or_equal_to: 2000
    validates_numericality_of :ano, less_than_or_equal_to: 2024
end
