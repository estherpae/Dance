class DanceClass < ActiveRecord::Base
  belongs_to :instructor
  belongs_to :studio
end
