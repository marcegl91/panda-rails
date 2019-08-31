Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'

  namespace :api do
    namespace :v1 do
      resources :users, only: [:show] do
        member do
          get 'request-donations'
          get 'offer-donations'
          get 'nearby-users'
        end
      end

      resources :categories, only: [:index] do
        member do
          get 'nearby-request-donations'
          get 'nearby-offer-donations'
        end
      end
      resources :donations, only: [:index, :show, :create]
    end
  end
end
