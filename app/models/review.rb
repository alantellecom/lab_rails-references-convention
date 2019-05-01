class Review < ApplicationRecord
  POINTS = (1..5).to_a
  belongs_to :usuario
  belongs_to :quarto, counter_cache: true
def self.estrelas
  (average(:pontos) || 0).round
end

end
