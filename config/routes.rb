Rails.application.routes.draw do

  root to: 'washes#new'
  resources :washes
end
