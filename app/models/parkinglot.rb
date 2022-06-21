class ParkingLot < ActiveRecord::Base
    has_many :parkedcars
    has_many :vehicles, through: :parkedcars
end