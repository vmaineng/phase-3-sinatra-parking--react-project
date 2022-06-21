class ParkedCar < ActiveRecord::Base
    belongs_to :vehicle
    belongs_to :parkinglot
end