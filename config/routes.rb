Rails.application.routes.draw do
  resources :admins
  resources :codes do
    resources :links
  end
end
