class CreateParkedCars < ActiveRecord::Migration[6.1]
  def change
    create_table :parked_cars do |t|
      t.integer :price
      t.timestamps
      t.belongs_to :vehicle
      t.belongs_to :parking_lot
    end
  end
end
