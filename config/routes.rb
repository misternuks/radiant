Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post '/gpt_test', to: "pages#gpt"
  # Defines the root path route ("/")
  # root "articles#index"
  resources :campaigns do
    resources :active_players, only: %i[index new create]
    resources :encounters, only: %i[new create edit]
  end
  resources :encounters, only: %i[index show update]
  resources :players, only: %i[destroy]

  get '*path' => redirect('/404')
end
