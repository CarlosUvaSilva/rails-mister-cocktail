class Ingredient < ApplicationRecord
  has_many :doses


  validates :name, presence: true, uniqueness: true
  before_destroy :check_for_cocktail
end
