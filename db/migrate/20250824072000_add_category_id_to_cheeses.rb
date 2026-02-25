class AddCategoryIdToCheeses < ActiveRecord::Migration[8.0]
  def change
    add_reference :cheeses, :category, foreign_key: true
    remove_column :cheeses, :category, :string
  end
end
