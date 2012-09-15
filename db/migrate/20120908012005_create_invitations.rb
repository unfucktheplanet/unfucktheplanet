class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.string :invite_token
      t.string :email

      t.timestamps
    end
  end
end
