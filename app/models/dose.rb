class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail
  validates :ingredient, presence: true
  # validates :cocktail, presence: true
  validates :description, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }
end
