class CreateInventory < ActiveRecord::Migration[7.1]
  def change
    create_table :inventories do |t|
      t.references :film, null: false, foreign_key: true
      t.references :store, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
