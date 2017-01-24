Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: 'registrations'}

  root 'pages#index'

  resources :users, only: [:show, :index]

  get 'about' => 'pages#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
