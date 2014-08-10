class CreateOperations < ActiveRecord::Migration
  def change
    create_table :operations do |t|
      t.belongs_to :account
    
      t.string :name
      t.decimal :value

      t.timestamps
    end
  end
end
