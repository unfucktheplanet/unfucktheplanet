class User < ActiveRecord::Base
  attr_accessible :email, :firstname, :gender, :lastname
end
