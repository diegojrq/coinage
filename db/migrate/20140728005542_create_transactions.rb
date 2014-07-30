class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.belongs_to :account
      
      t.string :name
      t.decimal :value
      
      t.timestamps
    end
  end
end
