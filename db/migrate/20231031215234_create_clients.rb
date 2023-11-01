class CreateClients < ActiveRecord::Migration[7.1]
  def change
    create_table :clients do |t|
      t.string :nom
      t.string :adresse
      t.string :telephone

      t.timestamps
    end
  end
end
