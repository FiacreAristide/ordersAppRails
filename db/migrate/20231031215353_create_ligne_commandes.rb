class CreateLigneCommandes < ActiveRecord::Migration[7.1]
  def change
    create_table :ligne_commandes do |t|
      t.references :commande, null: false, foreign_key: true
      t.references :produit, null: false, foreign_key: true
      t.integer :quantite
      t.decimal :reduction
      t.decimal :montant

      t.timestamps
    end
  end
end
