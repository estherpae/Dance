class FavoriteClass < ActiveRecord::Base
  belongs_to :dance_class
  belongs_to :user

  validates :dance_class_id, :user_id, :presence => true

end
