puts "🌱 Seeding spices..."

# Seed your database here

puts "Creating vehicles"
v1 = Vehicle.create(license_plate: 8763482)
v2 = Vehicle.create(license_plate: 3920834)

puts "Creating parking lots"
p1 = ParkingLot.create(slot: 32, level_1: 1)
p2 = ParkingLot.create(slot: 54, level_1: 1)

puts "Creating parked cards"
ParkedCar.create(price: 50, vehicle_id: v1.id, parkinglot_id: p1.id)
ParkedCar.create(price: 50, vehicle_id: v2.id, parkinglot_id: p2.id)

puts "✅ Done seeding!"
