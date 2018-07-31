Rails.application.routes.draw do
  get  '/usuarios', to: 'usuarios#index' 
  get '/usuarios/new', to: 'usuarios#new' 
  post '/usuarios', to: 'usuarios#create', as: 'create_usuario'
  get '/usuarios/:id', to: 'usuarios#show', as: 'usuario' 
  get '/usuarios/:id/edit', to: 'usuarios#edit', as: 'edit_usuario'
  patch '/usuarios/:id', to: 'usuarios#update'
  put '/usuarios/:id', to: 'usuarios#update'
  delete'/usuarios/:id', to: 'usuarios#delete', as: 'delete_usuario'

  resources :usuarios
  


  



  #resources :usuarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
