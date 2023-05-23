Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
<<<<<<< HEAD
  resources :campaign do
    resources :player
    resources :encounter do
      resources :target
    end
  end
=======
  resources :campaigns, only: %i[index show new create]
>>>>>>> 875082b5445857e785693befafbecb30865934fa
end
