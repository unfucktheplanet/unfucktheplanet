class CreateWatchers < ActiveRecord::Migration
  def change
    create_table :watchers do |t|
      t.integer :user_id
      t.integer :fuck_id

      t.timestamps
    end
  end
end
