Rails.application.routes.draw do
  resources :finds 
  resources :profiles 
  get 'profiles/search'
  resources :posts
  devise_for :users
  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
