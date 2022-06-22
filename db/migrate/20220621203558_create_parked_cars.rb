class CreateParkedCars < ActiveRecord::Migration[6.1]
  def change
    create_table :parkedcars do |t|
      t.integer :price
      t.timestamps
      t.belongs_to :vehicle
      t.belongs_to :parkinglot
      t.datetime :arrival
      t.datetime :departure
    end
  end
end
