class AddFlightIdAndNumOfPassengersToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :num_of_passengers, :integer
    add_column :bookings, :flight_id, :integer
  end
end
