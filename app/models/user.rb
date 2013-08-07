class User < ActiveRecord::Base
  has_many :favorite_classes
end
