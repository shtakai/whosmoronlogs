Rails.application.routes.draw do
  root 'udons#index'
  resources :udons
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
