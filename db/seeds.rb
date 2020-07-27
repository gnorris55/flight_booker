Airport.destroy_all
Flight.destroy_all

@airport_one = Airport.create(code: 'NYC')
@airport_two = Airport.create(code: 'LAX')
@airport_three = Airport.create(code: 'HKG')

Flight.create(start_date: DateTime.now + 5.days, from_airport_id: @airport_one.id, to_airport_id: @airport_two.id)
Flight.create(start_date: DateTime.now + 10.days, from_airport_id: @airport_three.id, to_airport_id: @airport_one.id)
Flight.create(start_date: DateTime.now + 13.days, from_airport_id: @airport_two.id, to_airport_id: @airport_three.id)

p "created: #{Flight.count} Airports"
p "created: #{Flight.count} flights"
