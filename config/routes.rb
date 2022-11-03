Rails.application.routes.draw do
  get 'gossip/index'
  get 'gossip/edit'
  get 'gossip/new'
  get 'gossip/show'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/', to:'main#home'
  get '/welcome/:first_name', to: 'main#welcome'

  resources :gossips
  
end
