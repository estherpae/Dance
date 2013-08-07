class FavoriteClass < ActiveRecord::Base
  belongs_to :dance_class
  belongs_to :user
end
