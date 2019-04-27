class Quarto < ApplicationRecord
    belongs_to :usuario
    has_many :reviews, dependent: :destroy
end
