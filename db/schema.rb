# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_05_09_114559) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carros", force: :cascade do |t|
    t.string "nome", limit: 150
    t.string "modelo", limit: 150
    t.integer "ano"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fornecedor_tipos", force: :cascade do |t|
    t.string "nome", limit: 100
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fornecedores", force: :cascade do |t|
    t.string "nome", limit: 150
    t.string "cnpj", limit: 25
    t.text "endereco"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "cep", limit: 11
    t.string "email"
    t.bigint "fornecedor_tipo_id"
    t.index ["fornecedor_tipo_id"], name: "index_fornecedores_on_fornecedor_tipo_id"
  end

  add_foreign_key "fornecedores", "fornecedor_tipos"
end
