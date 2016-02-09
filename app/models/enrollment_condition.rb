class EnrollmentCondition < ActiveRecord::Base
  belongs_to :enrollment
  belongs_to :condition
end