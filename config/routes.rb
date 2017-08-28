Rails.application.routes.draw do
  devise_for :users
  resources :references
  root :to => 'contents#index'
  resources :contents

  resources :codes do
    resources :links
  end

  resources :comments
end
