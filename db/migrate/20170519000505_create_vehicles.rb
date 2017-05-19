class CreateVehicles < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicles do |t|
      t.string :type
      t.string :license_plate
      t.boolean :tailgate_up

      t.timestamps
    end
  end
end
