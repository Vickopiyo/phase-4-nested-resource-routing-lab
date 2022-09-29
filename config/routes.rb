Rails.application.routes.draw do
     
  # get "users/:user_id/items", to: "users#items_index" 
  # get "users/:user_id/items/:id", to: "users#item" 


  resources :users, only: [:show,:index] do

    resources :items, only: [:index,:create,:show]
end


resources :items, only: [:index]
end
