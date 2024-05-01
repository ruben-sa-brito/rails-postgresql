class CreateCarros < ActiveRecord::Migration[7.1]
  def change
    create_table :carros do |t|
      t.string :nome, limit: 100
      t.string :modelo, limit: 150
      t.integer :ano

      t.timestamps
    end
  end
end
