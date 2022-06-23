class Parkedcar < ActiveRecord::Base
    belongs_to :vehicle
    belongs_to :parkinglot

def formatted_time
    time.strftime("%A, %m/%d/%y %l:%M %p")
end


end