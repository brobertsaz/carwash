class CreateWashes < ActiveRecord::Migration[5.1]
  def change
    create_table :washes do |t|
      t.decimal :base_fee, precision: 8, scale: 2
      t.boolean :muddy_bed
      t.integer :transaction_id

      t.timestamps
    end
  end
end
