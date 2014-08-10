class AddStartValueToAccount < ActiveRecord::Migration
  def change
    add_column :accounts, :start_value, :decimal
  end
end
