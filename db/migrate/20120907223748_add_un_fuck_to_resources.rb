class AddUnFuckToResources < ActiveRecord::Migration
  def change
    add_column :resources, :unfuck_id, :integer
  end
end
