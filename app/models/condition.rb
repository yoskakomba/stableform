class Condition < ActiveRecord
  validates :name, presence: true, length: { minimum: 2, maximum: 25 }
  has_many :enrollment_conditions
  has_many :enrollments, through: :enrollment_conditions
end