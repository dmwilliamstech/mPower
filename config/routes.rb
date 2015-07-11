Rails.application.routes.draw do
  
  devise_for :admins
  devise_for :users
  resources :posts do
  	resources :comments
  end
  root "pages#mpower"
#  root "posts#index"

  get '/contact', to: 'pages#contact'
  get '/about', to: 'pages#about'

end
