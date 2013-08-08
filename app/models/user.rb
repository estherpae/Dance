class User < ActiveRecord::Base
  has_many :favorite_classes
  has_many :exercises

  validates :name, :uniqueness => true
  validates :name, :password, :password_confirmation, :presence => true

  has_secure_password
end
