Conciencia::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :posts
  resources :temas do
  	resources :comentarios
  end

  root 'posts#index'

  
end
