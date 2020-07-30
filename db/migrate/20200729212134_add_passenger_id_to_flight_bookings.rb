class AddPassengerIdToFlightBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :flight_bookings, :passenger_id, :integer
  end
end
