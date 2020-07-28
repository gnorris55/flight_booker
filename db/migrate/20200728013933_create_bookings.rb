class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :amount_of_passengers
      t.integer :flight_id
      
      t.timestamps
    end
  end
end
