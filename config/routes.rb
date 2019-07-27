Rails.application.routes.draw do

  devise_for :users
  root to: "home#index"

  resources :sessions, only: [:create, :destroy]

  namespace :api do 
    namespace :v1 do
      resources :freewrites, only: [:index, :create, :destroy, :update]
    end
  end

  as :user do
    get 'sign_in', :to => 'devise/sessions#new', as: "login"
  end

  get 'signup', :to => 'devise/registrations#new', as: "signup"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
