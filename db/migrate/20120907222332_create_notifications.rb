class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.string :message
      t.integer :user_id
      t.integer :fuck_id
      t.integer :unfuck_id

      t.timestamps
    end
  end
end
