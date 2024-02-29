class CreateFilms < ActiveRecord::Migration[7.1]
  def change
    create_table :films do |t|
      t.string :title
      t.text :description
      t.time :year
      t.integer :rental_duration
      t.float :rating
      t.integer :duration
      t.integer :rental_price

      t.timestamps
    end
  end
end
