class Parkedcar < ActiveRecord::Base
    belongs_to :vehicle
    belongs_to :parkinglot

def formatted_time
    arrival.strftime("%b %e, %l:%M %p")
    #return an array with two strings; or return as an object with keys as arrival and departure
end


end