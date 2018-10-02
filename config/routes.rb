Rails.application.routes.draw do
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'pages#index'
get 'about', to: 'pages#about'
get 'contact', to: 'contacts#new'
#post 'contact', to: 'pages#email'
resources :contacts, except: [:new, :index, :edit, :destroy]
get 'what', to: 'pages#what'
get 'what.php', to: 'pages#what'
get 'how', to: 'pages#how'
get 'how.php', to: 'pages#how'
get 'who', to: 'pages#who'
get 'who.php', to: 'pages#who'
get 'memdexcell', to: 'pages#memdexcell'
get 'memdexcell.php', to: 'pages#memdexcell'
get 'more', to: 'pages#more'
get 'more.php', to: 'pages#more'


resources :users #Website Users


#HCPS Functionality Routes
resources :locations #HCPS locations
get 'maintenance', to: 'orders#new'
resources :orders, except: :new #HCPS Maintenance Requests
get 'open', to: 'orders#open'
get 'closed', to: 'orders#closed'

#Site Sessions
get 'login', to: 'sessions#new'
post 'login', to: 'sessions#create'
delete 'logout', to: 'sessions#destroy'


end
