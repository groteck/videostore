class CreateRents < ActiveRecord::Migration
  def change
    create_table :rents do |t|
      t.integer :user_id
      t.integer :films_box_id
      t.datetime :start_day
      t.datetime :end_day

      t.timestamps
    end
  end
end
