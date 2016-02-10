class Body < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 2, maximum: 25 }
  has_many :enrollment_bodies
  has_many :enrollments, through: :enrollment_bodies
end