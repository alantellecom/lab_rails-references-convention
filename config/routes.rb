Rails.application.routes.draw do
  root 'quartos#index'
  
  scope module: 'quartos' do #sem utilizar params do quarto pela rota (sem :quato_id do no caminho das rotas, apena :id do review)
    get 'avaliacoes', to: 'reviews#index', as: 'avaliacoes'
    post 'avaliacoes', to: 'reviews#create', as: 'reviews' # para utiliza convenção do botão submit create/update, nome do path = nome do controle com "s" no final 
    get 'avaliacao/new', to: 'reviews#new', as: 'new_avaliacao'
    get 'avaliacao/:id', to: 'reviews#show', as: 'avaliacao'
    get 'avaliacao/:id/edit', to: 'reviews#edit', as:  'edit_avaliacao'
    patch  'avaliacao/:id', to: 'reviews#update', as: 'review' # para utiliza convenção do botão submit create/update, nome do path = nome do controle sem "s" no final
  end
  
  get 'quarto/:id', to: 'quartos#avaliar', as: 'new_avaliar'   # utilizando params do quarto pela rota

  resources :quartos do # utilizando params do quarto pela rota. Modifica nomenclatura da path das actions-controller review para padrão "quarto_review" 
    resources :reviews, only: [:create, :update, :show], module: :quartos #modifica caminho para busca do controller review
    
  end 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
