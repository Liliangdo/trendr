Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  resources :users, only: [:show, :edit, :update]
  resources :universes, only: [:index, :show]

  mount Attachinary::Engine => "/attachinary"

end
