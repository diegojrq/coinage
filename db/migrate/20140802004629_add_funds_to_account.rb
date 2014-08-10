class AddFundsToAccount < ActiveRecord::Migration
  def change
    add_column :accounts, :funds, :decimal
  end
end
