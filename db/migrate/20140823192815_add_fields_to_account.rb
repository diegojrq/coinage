class AddFieldsToAccount < ActiveRecord::Migration
  def change
    # got name
      add_column :accounts, :symbol, :string # has to be an image
      add_column :accounts, :start_value, :decimal
      add_column :accounts, :funds, :decimal
      add_column :accounts, :number, :string
      add_column :accounts, :bank, :string
      add_column :accounts, :info, :string
  end
end
