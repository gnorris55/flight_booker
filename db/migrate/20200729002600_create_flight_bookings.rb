class CreateFlightBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :flight_bookings do |t|
      t.integer :flight_id
      t.integer :passenger_number
      t.timestamps
    end
  end
end
