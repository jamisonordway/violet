Rails.application.routes.draw do
  get '/', to: 'home#index'

  namespace :api do
    namespace :v1 do
      resources :freewrites, only: [:index, :create, :destroy, :update]
    end
  end

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
end
