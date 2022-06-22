class Parkedcar < ActiveRecord::Base
    belongs_to :vehicle
    belongs_to :parkinglot


end