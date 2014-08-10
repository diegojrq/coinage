class CreateKeywords < ActiveRecord::Migration
  def change
    create_table :keywords do |t|
      t.belongs_to :category

      t.string :name

      t.timestamps
    end
  end
end
