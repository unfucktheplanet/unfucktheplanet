class CreateUnfucks < ActiveRecord::Migration
  def change
    create_table :unfucks do |t|
      t.string :description
      t.integer :fuck_id
      t.integer :user_id
      t.integer :location_id
      t.string :execution

      t.timestamps
    end
  end
end
