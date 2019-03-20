Rails.application.routes.draw do
  resources :transactions, only: [:create, :index] 
  resources :products
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
 }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
