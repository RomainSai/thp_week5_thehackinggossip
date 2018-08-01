Rails.application.routes.draw do
  root to: 'static_pages#home', as: 'home'
  resources :gossips do
    resources :comments
  end
end
