Rails.application.routes.draw do
  
  devise_for :admins, :skip => :registration
  devise_for :users, :skip => :registration
  resources :posts do
  	resources :comments
  end
  root "pages#home"
#  root "posts#index"

# resources "contacts", only: [:new, :create]

#   get '/contact', to: 'pages#contact'
#   get '/about', to: 'pages#about'
#   get '/whoweare', to: 'pages#whoweare'
#   get '/aboutus', to: 'pages#aboutus'
#   get '/whatwedo', to: 'pages#whatwedo'
  get '/post', to: 'posts#index'
  get '/mpwr', to: 'pages#mpower'
  get '/schedule', to: 'pages#schedule'
  get "*path" => redirect("/mpwr")

end
