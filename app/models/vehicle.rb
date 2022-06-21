class Vehicle < ActiveRecord::Base
   has_many :parkedcars
   has_many :parkinglots, through: :parkedcars
end