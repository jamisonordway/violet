Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#homepage'

  resources :sessions, only: [:create, :destroy]

  as :user do
    get 'sign_in', :to => 'devise/sessions#new', as: "login"
  end

  get 'signup', :to => 'devise/registrations#new', as: "signup"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
