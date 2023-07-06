Rails.application.routes.draw do
  resources :news, only: [:index, :show] do
    resources :comments
  end
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "news#index"
end
