class CreateCheesesMenusJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :cheeses, :menus do |t|
      t.index :cheese_id
      t.index :menu_id
    end
  end
end