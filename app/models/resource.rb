class Resource < ActiveRecord::Base
  attr_accessible :avail_from, :avail_to, :description, :location_id, :quantity, :unit
end
