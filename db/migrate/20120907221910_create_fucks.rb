class CreateFucks < ActiveRecord::Migration
  def change
    create_table :fucks do |t|
      t.string :description
      t.integer :user_id
      t.string :locaiton_id
      t.string :image

      t.timestamps
    end
  end
end
