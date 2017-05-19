class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.decimal :total_amount
      t.integer :wash_id

      t.timestamps
    end
  end
end
