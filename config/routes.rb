Rails.application.routes.draw do
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'pages#index'
get 'about', to: 'pages#about'
get 'contact', to: 'pages#contact'
get 'what', to: 'pages#what'
get 'what.php', to: 'pages#what'
get 'how', to: 'pages#how'
get 'how.php', to: 'pages#how'
get 'who', to: 'pages#who'
get 'who.php', to: 'pages#who'


resources :users #Website Users


#HCPS Functionality Routes
resources :locations #HCPS locations
get 'maintenance', to: 'orders#new'
resources :orders, except: :new #HCPS Maintenance Requests

#Site Sessions
get 'login', to: 'sessions#new'
post 'login', to: 'sessions#create'
delete 'logout', to: 'sessions#destroy'


end
