class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :description
      t.string :unit
      t.integer :quantity
      t.date :avail_from
      t.date :avail_to
      t.integer :location_id

      t.timestamps
    end
  end
end
