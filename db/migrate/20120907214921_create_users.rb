class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.boolean :gender
      t.string :email
      t.string :auth_provider
      t.string :auth_token
      t.string :auth_uid

      t.timestamps
    end
  end
end
