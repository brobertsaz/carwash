class RenameTransactionToSalesTransaction < ActiveRecord::Migration[5.1]
  def change
    rename_table :transactions, :sales_transactions
  end
end
