class User < ActiveRecord::Base
  devise :omniauthable, :registerable, :rememberable, :trackable
  attr_accessible :email, :firstname, :lastname, :gender, :remember_me, :auth_provider, :auth_uid
  validates :auth_provider, presence: true
  validates :auth_uid, presence: true
end
