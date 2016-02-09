class EnrollmentPreference < ActiveRecord::Base
  belongs_to :enrollment
  belongs_to :preference
end