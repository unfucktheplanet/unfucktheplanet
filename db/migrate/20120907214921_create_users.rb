class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.boolean :gender
      t.string :email
      t.string :fb_token
      t.string :fb_id

      t.timestamps
    end
  end
end
