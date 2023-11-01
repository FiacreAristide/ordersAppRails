Rails.application.routes.draw do
  root 'home#index'
  resources :produits
  resources :commandes
  resources :clients

end
