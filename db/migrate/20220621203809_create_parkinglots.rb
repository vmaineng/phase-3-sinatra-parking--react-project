class CreateParkinglots < ActiveRecord::Migration[6.1]
  def change
    create_table :parkinglots do |t|
      t.integer :slot
      t.integer :level_1
    end
  end
end
