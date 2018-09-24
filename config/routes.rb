Rails.application.routes.draw do
  resources :locations #HCPS locations

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'pages#index'
get 'about', to: 'pages#about'
get 'contact', to: 'pages#contact'
get 'what', to: 'pages#what'
get 'what.php', to: 'pages#what'

resources :users
get 'maintenance', to: 'orders#new'
resources :orders, except: :new

get 'login', to: 'sessions#new'
post 'login', to: 'sessions#create'
delete 'logout', to: 'sessions#destroy'


end
