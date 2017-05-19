class ChangeTransactionIdToSalesTransactionId < ActiveRecord::Migration[5.1]
  def change
    rename_column :washes, :transaction_id, :sales_transaction_id
  end
end
