class CreateParkingLots < ActiveRecord::Migration[6.1]
  def change
    create_table :parking_lots do |t|
      t.integer :parking_slot
      t.integer :level_1
    end
  end
end
