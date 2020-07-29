Airport.destroy_all
Flight.destroy_all

@airport_one = Airport.create(code: 'NYC')
Airport.create(code: 'LAX')
Airport.create(code: 'HKG')
Airport.create(code: 'MEL')
Airport.create(code: 'YYJ')
Airport.create(code: 'YVR')
Airport.create(code: 'MOT')

for i in 0...250
    to_flight = 0
    from_flight = 0
    airport_count = Airport.count - 1

    while 
        to_flight = rand( 1 + airport_count)
        from_flight = rand(1 + airport_count)
        
        if to_flight != from_flight
            break
        end

    end 
    Flight.create(start_date: DateTime.now + rand(350).days, 
                  from_airport_id: @airport_one.id + from_flight,
                  to_airport_id: @airport_one.id + to_flight,
                  num_of_passengers: 1 + rand(50))
                  
end

p "created: #{Airport.count} Airports"
p "created: #{Flight.count} flights"
