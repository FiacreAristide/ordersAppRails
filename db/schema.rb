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

ActiveRecord::Schema[7.1].define(version: 2023_10_31_215353) do
  create_table "categories", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "libelle"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "nom"
    t.string "adresse"
    t.string "telephone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "commandes", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.bigint "client_id", null: false
    t.date "dateCommande"
    t.float "montantTotal"
    t.integer "nombreArticle"
    t.string "etat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_commandes_on_client_id"
  end

  create_table "ligne_commandes", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.bigint "commande_id", null: false
    t.bigint "produit_id", null: false
    t.integer "quantite"
    t.decimal "reduction", precision: 10
    t.decimal "montant", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["commande_id"], name: "index_ligne_commandes_on_commande_id"
    t.index ["produit_id"], name: "index_ligne_commandes_on_produit_id"
  end

  create_table "produits", charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "libelle"
    t.float "prixUnitaire"
    t.bigint "categorie_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["categorie_id"], name: "index_produits_on_categorie_id"
  end

  add_foreign_key "commandes", "clients"
  add_foreign_key "ligne_commandes", "commandes"
  add_foreign_key "ligne_commandes", "produits"
  add_foreign_key "produits", "categories"
end
