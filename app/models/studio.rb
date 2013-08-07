class Studio < ActiveRecord::Base
  has_many :dance_classes

  validates :name, :address, :phone, :uniqueness => true
  validates :name, :address, :phone, :presence => true
end
