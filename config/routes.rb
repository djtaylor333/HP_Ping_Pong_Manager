Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/rails_admin', as: 'rails_admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'home#index'

  get '/login' => 'login#index'
  get '/signup' => 'signup#index'

end
