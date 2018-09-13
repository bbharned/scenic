Rails.application.routes.draw do
  resources :locations #HCPS locations

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'pages#index'
get 'about', to: 'pages#about'
get 'contact', to: 'pages#contact'

resources :users


end
