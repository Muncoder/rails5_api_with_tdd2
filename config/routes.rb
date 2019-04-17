Rails.application.routes.draw do

  resources :articles, only: [:index, :show, :create]

  post '/login', to: 'access_tokens#create'
  delete '/logout', to: 'access_tokens#destroy'
end
