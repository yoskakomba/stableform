class EnrollmentHealth < ActiveRecord::Base
  belongs_to :enrollment
  belongs_to :health
end