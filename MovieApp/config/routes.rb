Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/film', to: 'film#index'
  get '/film/new', to: 'film#new'
  post '/film', to: 'film#create'
  get '/film/:id', to: 'film#show'
  get '/film/:id/edit', to: 'film#edit'
  put '/film/:id', to: 'film#update'
  delete '/film/:id', to: 'film#destroy'
 
    get '/user', to: 'users#index'
    get '/user/new', to: 'users#new'
    post '/user', to: 'users#create'
    get '/user/:id', to: 'users#show'
    get '/user/:id/edit', to: 'users#edit'
    put '/user/:id', to: 'users#update'
    delete '/user/:id', to: 'users#destroy'
    root to: 'user#index'
end