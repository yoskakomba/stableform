class Preference < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 2, maximum: 25 }
  has_many :enrollment_preferences
  has_many :enrollments, through: :enrollment_preferences
end