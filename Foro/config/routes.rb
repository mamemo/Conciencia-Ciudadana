Rails.application.routes.draw do
  devise_for :users
  resources :temas do
  	resources :comentarios
  end
  root 'temas#index'
end
