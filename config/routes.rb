Rails.application.routes.draw do
  resources :locations do
    resources :posts
  end
  root 'locations#index'
end
