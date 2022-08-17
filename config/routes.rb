Rails.application.routes.draw do
  resources :restaurants do
    collection do
      resources :reviews, only: %i[new create]
      get :top
    end
    resources :reviews, only: %i[destroy]
  end
end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
