Rails.application.routes.draw do
  devise_for :users do
    resources :favourites, only: %i[index]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  root to: "pages#landing_page"
  get "my_profile", to: "pages#my_profile"
  get "other_profile/:id", to: "pages#other_profile", as: :other_profile

  resources :bars, only: %i[index show]

  resources :favourites, only: %i[new create edit update delete]

  resources :subvibes, only: %i[new create delete]
end
