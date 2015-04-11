class CorrectSupportersTripsTable < ActiveRecord::Migration
  def change
    rename_column :supporters_trips, :supporters_id, :supporter_id
    rename_column :supporters_trips, :trips_id, :trip_id
  end
end
