class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :name
      t.integer :curret_count
      t.integer :rented_count
      t.integer :total_count
      t.decimal :day_price

      t.timestamps
    end
  end
end
