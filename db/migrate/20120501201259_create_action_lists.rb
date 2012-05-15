class CreateActionLists < ActiveRecord::Migration
  def change
    create_table :action_lists do |t|
      t.string :name
      t.string :method

      t.timestamps
    end
  end
end
