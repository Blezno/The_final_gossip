Rails.application.routes.draw do
  get 'gossip/index'
  get 'gossip/edit'
  get 'gossip/new'
  get 'gossip/show'

  get '/', to:'main#home'
  get '/welcome/:first_name', to: 'main#welcome'

  resources :gossips

end
