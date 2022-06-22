class Vehicle < ActiveRecord::Base
   has_many :parkedcars
   has_many :parkinglots, through: :parkedcars

# def self.find_by
#     self.all.find_by(license_plate: 8763482)
# end

end