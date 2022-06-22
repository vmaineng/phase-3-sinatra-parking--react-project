class ParkingLot < ActiveRecord::Base
    has_many :parkedcars
    has_many :vehicles, through: :parkedcars

    def self.is_available(arrival, departure)
        self.all.find do |slot|
          slot.parked_cars.none? do |parked|
              parked.arrival <= arrival && arrival <= parked.departure || arrival <= parked.arrival && parked.arrival <= departure
          end
        end
      end

end