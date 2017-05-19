class AddFieldsToWashes < ActiveRecord::Migration[5.1]
  def change
    add_column :washes, :discount, :boolean
    add_column :washes, :add_ons, :decimal, precision: 8, scale: 2
  end
end
