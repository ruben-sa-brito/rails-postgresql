class Carro < ApplicationRecord
    validates_presence_of :nome, :modelo, :ano
    validates_length_of :nome, minimum: 10, maximum: 100
end
