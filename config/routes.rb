Rails.application.routes.draw do
  root to: "home#index"
  devise_for :users

  resources :users do
    resources :products
  end

  resources :users do
    resources :tags
  end

  # resources :products do
  #
  # end
end
