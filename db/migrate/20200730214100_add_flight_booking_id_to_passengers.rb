class AddFlightBookingIdToPassengers < ActiveRecord::Migration[5.2]
  def change
    add_column :passengers, :flight_booking_id, :integer
  end
end
