class AddTitleToFuck < ActiveRecord::Migration
  def self.up
    add_column :fucks, :title, :string
  end

  def self.down
    remove_column :fucks, :title
  end
end
