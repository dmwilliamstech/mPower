Rails.application.routes.draw do
  
  devise_for :admins, :skip => :registration
  devise_for :users
  resources :posts do
  	resources :comments
  end
  root "pages#mpower"
#  root "posts#index"

  get '/contact', to: 'pages#contact'
  get '/about', to: 'pages#about'
  get '/whoweare', to: 'pages#whoweare'
  get '/aboutus', to: 'pages#aboutus'
  get '/whatwedo', to: 'pages#whatwedo'
  get "*path" => redirect("/")

end
