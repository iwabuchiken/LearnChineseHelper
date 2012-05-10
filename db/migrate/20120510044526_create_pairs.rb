class CreatePairs < ActiveRecord::Migration
  def change
    create_table :pairs do |t|
      t.string :chinese
      t.string :english
      t.string :japanese
      t.integer :text_id

      t.timestamps
    end
  end
end
