Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :comments
  get 'pages/info'

root to: redirect('/ideas')
  resources :ideas
  root "ideas#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
