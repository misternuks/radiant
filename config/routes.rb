Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post '/gpt_test', to: "pages#gpt"
  # Defines the root path route ("/")
  # root "articles#index"
  resources :campaigns do
    resources :players, only: %i[index new create destroy] do
      resources :encounters, only: %i[show new create]
    end
  end
end
