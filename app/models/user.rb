class User < ActiveRecord::Base
  acts_as_authentic
  
  has_many :links, :dependent => :destroy
  auto_strip_attributes :username, :email

end
