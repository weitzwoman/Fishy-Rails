Rails.application.routes.draw do
  root to: "home#index"
  devise_for :users, :controllers => { :registrations => "registrations" }

  resources :products do
    resources :comments
  end
end
