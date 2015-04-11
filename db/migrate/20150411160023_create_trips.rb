class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.date :date
      t.string :location
      t.string :opponent
      t.integer :opponent_score
      t.integer :fire_score

      t.timestamps null: false
    end
  end
end
