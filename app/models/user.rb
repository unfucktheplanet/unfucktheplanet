class User < ActiveRecord::Base
  devise :omniauthable, :registerable, :rememberable, :trackable
  attr_accessible :email, :firstname, :lastname, :gender, :remember_me
end
