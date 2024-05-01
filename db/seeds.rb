# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Carro.create(nome: 'Eagle GT', modelo: 'Sprint', ano: 2024)
Carro.create(nome: 'Thunder X', modelo: 'Turbo', ano: 2023)
Carro.create(nome: 'Phoenix', modelo: 'Blaze', ano: 2022)
Carro.create(nome: 'Avalanche', modelo: 'Fury', ano: 2025)
Carro.create(nome: 'Vortex', modelo: 'Raptor', ano: 2023)
Carro.create(nome: 'Nova Prime', modelo: 'Velocity', ano: 2024)
Carro.create(nome: 'Firestorm', modelo: 'Inferno', ano: 2022)
Carro.create(nome: 'Apex', modelo: 'Apex', ano: 2025)
Carro.create(nome: 'Blitz', modelo: 'Strike', ano: 2023)
Carro.create(nome: 'Neon', modelo: 'Neon', ano: 2024)