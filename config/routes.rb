Rails.application.routes.draw do
  root 'quartos#index'
  
  scope module: 'quartos' do
    get 'avaliacoes', to: 'reviews#index', as: 'avaliacoes'
    post 'avaliacoes', to: 'reviews#create', as: 'reviews'
    get 'avaliacao/new', to: 'reviews#new', as: 'new_avaliacao'
    get 'avaliacao/:id/edit', to: 'reviews#edit', as:  'edit_avaliacao'
    patch  'avaliacao/:id', to: 'reviews#update', as: 'review'
    
  end

  resources :quartos do
    resources :reviews, only: [:create, :update], module: :quartos
  end 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
