Rails.application.routes.draw do
  
  devise_for :admins, :skip => :registration
  devise_for :users, :skip => :registration
  resources :posts do
  	resources :comments
  end
  root "pages#intro"
#  root "posts#index"

resources "contacts", only: [:new, :create]

  get '/contact', to: 'pages#contact'
  get '/about', to: 'pages#about'
  get '/whoweare', to: 'pages#whoweare'
  get '/aboutus', to: 'pages#aboutus'
  get '/whatwedo', to: 'pages#whatwedo'
  get '/mpwr', to: 'pages#mpower'
  get "*path" => redirect("/mpwr")

end
