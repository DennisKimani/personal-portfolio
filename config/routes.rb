Rails.application.routes.draw do
  root :to => 'contents#index'
  resources :contents
  resources :codes do
    resources :links
  end
end
