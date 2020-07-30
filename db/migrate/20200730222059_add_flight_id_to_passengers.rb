class AddFlightIdToPassengers < ActiveRecord::Migration[5.2]
  def change
    add_column :passengers, :flight_id, :integer
  end
end
