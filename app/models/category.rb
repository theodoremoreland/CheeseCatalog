class Category < ApplicationRecord
  # Associations
  has_many :cheeses, foreign_key: :category_id

  # Validations
  validates :name, presence: true, length: { minimum: 3, maximum: 25 }
  validates :description, presence: { message: "category must have a description" }, length: { minimum: 1 }
end

