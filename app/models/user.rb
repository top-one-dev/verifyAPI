class User < ApplicationRecord
  #Encrypt Password
  has_secure_password

  has_many :consumers
  validates_presence_of :name, :email, :password_digest

  accepts_nested_attributes_for :consumers, :allow_destroy => true
  
end
