class Friend < ActiveRecord::Base
  has_many :enrollment_friends
  has_many :enrollments, through: :enrollment_references
end