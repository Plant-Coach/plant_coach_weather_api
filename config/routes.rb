Rails.application.routes.draw do
  get "/rails/health" => "rails/health#show", as: :rails_health_check
  get "/rails/ready" => "rails/ready#show", as: :rails_ready_check
  namespace :api do
    namespace :v1 do
      resources :forecast, only: [:create]
      resources :frost, only: [:index]
    end
  end
end
