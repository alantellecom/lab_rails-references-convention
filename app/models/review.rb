class Review < ApplicationRecord
  POINTS = (1..5).to_a
  belongs_to :usuario
  belongs_to :quarto, counter_cache: true
end
