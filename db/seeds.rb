puts "🌱 Seeding spices..."

# Seed your database here

puts "Creating vehicles"
v1 = Vehicle.create(license_plate: 8763482)
v2 = Vehicle.create(license_plate: 3920834)

puts "Creating parking lots"
p1 = Parkinglot.create(slot: 32, level_1: 1)
p2 = Parkinglot.create(slot: 54, level_1: 1)

puts "Creating parked cards"

# 50.times do 
#     items.each { |item| 
#     price = rand(0-15)
#     vehicle = Vehicle.all.sample
#     parking_lot = Parkinglot.all.sample
#     arrival = rand(2.years).ago
#     departure = rand(2.years).ago
#     Parkedcar.create(price: price, vehicle: vehicle, parking_lot: parking_lot, arrival: arrival, departure: departure)
# binding.pry   
# }
# end

Parkedcar.create(price: 50, vehicle_id: v1.id, parkinglot_id: p1.id, arrival: "2022-03-15 04:30", departure: "2022-03-20 12:20")
Parkedcar.create(price: 50, vehicle_id: v2.id, parkinglot_id: p2.id, arrival: "2022-01-24 03:30", departure: "2022-01-30 01:30")

puts "✅ Done seeding!"
