class CreateFilmsBoxes < ActiveRecord::Migration
  def change
    create_table :films_boxes do |t|
      t.integer :rent_id
      t.integer :film_id
      t.integer :user_id
      t.boolean :rented

      t.timestamps
    end
  end
end
