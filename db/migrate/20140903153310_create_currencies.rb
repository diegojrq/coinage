class CreateCurrencies < ActiveRecord::Migration
  def change
    create_table :currencies do |t|
      t.string :country
      t.string :name
      t.string :code
      t.string :symbol

      t.timestamps
    end
  end
end
