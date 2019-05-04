# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_05_04_170645) do

  create_table "quartos", force: :cascade do |t|
    t.integer "numero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "usuario_id"
    t.integer "reviews_count"
    t.string "foto"
    t.index ["usuario_id"], name: "index_quartos_on_usuario_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "usuario_id"
    t.integer "quarto_id"
    t.integer "pontos"
    t.integer "[:usuario_id, :quarto_id]_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["[:usuario_id, :quarto_id]_id"], name: "index_reviews_on_[:usuario_id, :quarto_id]_id"
    t.index ["quarto_id"], name: "index_reviews_on_quarto_id"
    t.index ["usuario_id"], name: "index_reviews_on_usuario_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
