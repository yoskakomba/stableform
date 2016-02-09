class EnrollmentArea < ActiveRecord::Base
  belongs_to :enrollment
  belongs_to :area
end