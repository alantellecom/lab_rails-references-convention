Rails.application.routes.draw do
  root 'quartos#index'
  resources :quartos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
