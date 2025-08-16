class Cheese < ApplicationRecord
  # Associations
  belongs_to :category
  has_and_belongs_to_many :menus

  # Validations
  validates :name, presence: true, length: { minimum: 3, maximum: 25 }
  validates :description, presence: { message: "cheese must have a description" }, length: { minimum: 1 }
end