class CreateCategories < ActiveRecord::Migration[8.0]
  def change
    create_table :categories, if_not_exists: true do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
