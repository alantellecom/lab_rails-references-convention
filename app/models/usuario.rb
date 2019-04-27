class Usuario < ApplicationRecord
    has_many :quartos, dependent: :destroy
    has_many :reviews, dependent: :destroy
end
