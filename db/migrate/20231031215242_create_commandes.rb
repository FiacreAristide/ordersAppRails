class CreateCommandes < ActiveRecord::Migration[7.1]
  def change
    create_table :commandes do |t|
      t.references :client, null: false, foreign_key: true
      t.date :dateCommande
      t.float :montantTotal
      t.integer :nombreArticle
      t.string :etat

      t.timestamps
    end
  end
end
