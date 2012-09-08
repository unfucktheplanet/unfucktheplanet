class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :email
      t.integer :location_id
      t.string :fb_id
      t.string :fb_token

      t.timestamps
    end
  end
end
