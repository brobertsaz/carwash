class CreateVehicleWashes < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicle_washes do |t|
      t.integer :vehicle_id
      t.integer :wash_id

      t.timestamps
    end
  end
end
