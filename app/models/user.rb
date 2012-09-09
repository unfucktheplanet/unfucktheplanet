class User < ActiveRecord::Base
  attr_accessible :email, :fb_id, :fb_token, :first_name, :gender, :last_name, :location_id
end
