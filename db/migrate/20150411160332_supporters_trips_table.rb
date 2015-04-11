class SupportersTripsTable < ActiveRecord::Migration
  def change
    create_table :supporters_trips, id: false do |t|
      t.belongs_to :supporters, index: true
      t.belongs_to :trips, index: true
    end
  end
end
