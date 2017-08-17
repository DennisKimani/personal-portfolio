Rails.application.routes.draw do
  root :to => 'admins#index'
  resources :admins
  resources :codes do
    resources :links
  end
end
