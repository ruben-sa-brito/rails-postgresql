Rails.application.routes.draw do
  resources :administradores
  resources :fornecedor_tipos
  resources :fornecedores
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.

  get '/login', to: 'login#index'
  post '/login', to: 'login#logar'
  get '/login/sair', to: 'login#sair', as: 'login_sair'

  # Defines the root path route ("/")
  root "home#index"
  put '/carros/:id', to: 'carros#alterar', as: 'carros_alterar'
  get '/carros', to: 'carros#index', as: 'carros'
  get '/carros/cadastrar', to: 'carros#cadastrar', as: 'carros_cadastrar'
  get '/carros/:id/editar', to: 'carros#editar', as: 'carros_editar'
  post '/carros', to: 'carros#criar', as: 'carros_criar'
  
  get '/carros/:id', to: 'carros#show', as: 'carros_show'
  delete '/carros/:id', to: 'carros#apagar', as: 'carros_apagar'
  
end
