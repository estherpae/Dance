class Instructor < ActiveRecord::Base
  has_many :dance_classes

  validates :name, :biography, :uniqueness => true
  validates :name, :style, :biography, :presence => true
end
