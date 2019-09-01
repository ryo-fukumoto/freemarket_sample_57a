Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: "items#index"
  resources :items 
  resources :users
  get 'cards/add'  => 'cards#add'
  resources :cards 
end
