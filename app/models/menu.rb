class Menu < ApplicationRecord
  # Associations
  has_and_belongs_to_many :cheeses

  # Validations
  validates :name, presence: true, length: { minimum: 3, maximum: 25 }

  # Custom method (equivalent to addItem in Java)
  def add_item(cheese)
    cheeses << cheese
  end
end