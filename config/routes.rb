Rails.application.routes.draw do
  # get 'pages/about'
  get '/about', to: "pages#about"
  # VERB 'path', to: "controller#action", as: :internal_name


  # get 'pages/contact'
  get 'contact', to: "pages#contact", as: :contact

  # get '/', to: "pages#home", as: :home
  root to: "pages#home"


  get '/restaurants', to: "restaurants#index", as: :restaurants

  post '/restaurants', to: "restaurants#create"

  # restaurants/56
  get '/restaurants/:id', to: "restaurants#show", as: :restaurant

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
