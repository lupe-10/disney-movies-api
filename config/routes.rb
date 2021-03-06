Rails.application.routes.draw do
  devise_for :installs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :characters, only: %i[ index show create update destroy ]
      resources :movies, only: %i[ index show create update destroy ]
      resources :series, only: %i[ index show create update destroy ]
    end
  end
end
