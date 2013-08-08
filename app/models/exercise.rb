class Exercise < ActiveRecord::Base
  belongs_to :user

  validates :name, :user_id, :description, :presence => true
  validates :name, :description, :uniqueness => true

end
