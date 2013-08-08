class DanceClass < ActiveRecord::Base
  belongs_to :instructor
  belongs_to :studio


  validates :name, :instructor_id, :studio_id, :when, :time, :cost, :presence => true
  validates :name, :uniqueness => true

end
