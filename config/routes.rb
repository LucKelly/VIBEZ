Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  root to: "bars#index"
  resources :bars, only: %i[index show]

  resources :users, only: %i[show edit update] do
    resources :favourites, only: %i[index]
  end

  resources :favourites, only: %i[new create edit update delete]

  resources :subvibes, only: %i[new create delete]
end
