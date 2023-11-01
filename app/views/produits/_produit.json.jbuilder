json.extract! produit, :id, :libelle, :prixUnitaire, :categorie_id, :created_at, :updated_at
json.url produit_url(produit, format: :json)
