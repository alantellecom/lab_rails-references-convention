class Quarto < ApplicationRecord
    delegate :nome, to: :usuario, prefix:true
    
    
    
    belongs_to :usuario
    has_many :reviews, dependent: :destroy
end
