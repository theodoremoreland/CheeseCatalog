class Cheese < ApplicationRecord
  # Associations
  has_and_belongs_to_many :menus

  # Validations
  validates :name, presence: true, length: { minimum: 3, maximum: 25 }
  validates :description, presence: { message: "cheese must have a description" }, length: { minimum: 1 }
  validates :category, presence: true, length: { minimum: 3, maximum: 25 }
end
