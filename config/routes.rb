Rails.application.routes.draw do
  get '/', to: 'dashboard#index'

  namespace :api do
    namespace :v1 do
      resources :freewrites, only: [:index, :create, :destroy, :update]
    end
  end

  resources :freewrites, only: [:index, :new]
  resources :sections, only: :index
  resources :songs, only: :index

  devise_for :users, controllers: {
    sessions: 'users/sessions',
  }
end
