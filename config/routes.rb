Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: 'registrations'}

  	authenticated :user do
  		root to: "users#index"
	end

  root 'pages#index'

  resources :users, only: [:show, :index]
  resources :posts

  get 'about' => 'pages#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
