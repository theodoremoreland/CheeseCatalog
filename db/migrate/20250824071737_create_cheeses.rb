class CreateCheeses < ActiveRecord::Migration[8.0]
  def change
    create_table :cheeses do |t|
      t.string :name
      t.text :description
      t.string :category

      t.timestamps
    end
  end
end
