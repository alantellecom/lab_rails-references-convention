Rails.application.routes.draw do
  root 'quartos#index'
  
  scope module: 'quartos' do
    get 'avaliacoes', to: 'reviews#index', as: 'avaliacoes'
    get 'new_avaliacao', to: 'reviews#new', as: 'new_avaliacao'
    post 'create_avaliacao', to: 'reviews#create', as: 'create_avaliacao'
    
  end

  resources :quartos do
    resources :reviews, only: [:create, :update], module: :quartos
  end 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
