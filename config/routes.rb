Rails.application.routes.draw do
  root 'home#index'

  devise_for :publishers , controllers: {
    sessions: 'publishers/sessions',
    registrations:  'publishers/registrations'
  }



  get '/articles/table', to: 'articles#table'

  # get "/articles", to: "articles#index"
  # post "/articles", to: "articles#create"
  # get "/articles/new", to: "articles#new"
  # get "/articles/:id/edit", to: "articles#edit"
  # get "/show/:id", to: "articles#show"
  # patch "/articles/:id", to: "articles#update"
  # put "/articles/:id", to: "articles#update"
  # delete "/articles/:id", to: "articles#destroy"
  # get "/articles/:id", to: "articles#show"
  # get "/publishers", to: "publishers#index"

  resources :articles

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
