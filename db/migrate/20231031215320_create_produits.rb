class CreateProduits < ActiveRecord::Migration[7.1]
  def change
    create_table :produits do |t|
      t.string :libelle
      t.float :prixUnitaire
      t.references :categorie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
