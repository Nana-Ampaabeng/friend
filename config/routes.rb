Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do 
    get  '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :friend_profiles
  
  # get 'home/index'
  root 'home#index'
  get 'home/about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
