class Dose < ApplicationRecord
  belongs_to :cocktail, foreign_key: true
  belongs_to :ingredient, foreign_key: true
end
