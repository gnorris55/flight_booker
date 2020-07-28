class AddNumOfPassengersToFlights < ActiveRecord::Migration[5.2]
  def change
      add_column :flights, :num_of_passengers, :integer
  end
end
