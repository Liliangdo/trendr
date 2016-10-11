Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  mount Attachinary::Engine => "/attachinary"
  resources :universe, only: [:index, :show, :new, :create, :destroy]
end
