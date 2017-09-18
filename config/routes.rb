Rails.application.routes.draw do
  resources :homes
  devise_for :users
  resources :references
  root :to => 'homes#index'
  resources :contents

  resources :codes do
    resources :links
  end

  resources :comments
end
