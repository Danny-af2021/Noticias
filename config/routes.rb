Rails.application.routes.draw do
  resources :categories
  
  resources :noticieros, only: [:index, :show, :new]

  post '/noticieros', to: 'noticieros#create' 

  #get '/noticieros/index' 

  #root 'noticieros#index'
  
  #get '/noticieros/show' 

  #root 'noticieros#show'
  
  
  #get '/noticieros', to: 'noticieros#index'

  #get '/noticieros/:id', to 'noticieros#show', as: :noticia

  
  
  #get '/noticieros/:id', to 'noticieros#show', as::noticia 

  # get '/noticieros/:id', to 'noticieros#show', as: :noticia

  # --> resources :noticieros

  #resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  
end
