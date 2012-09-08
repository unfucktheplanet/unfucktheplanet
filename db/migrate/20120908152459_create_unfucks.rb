class CreateUnfucks < ActiveRecord::Migration
  def change
    create_table :unfucks do |t|
      t.string :description

      t.timestamps
    end
  end
end
