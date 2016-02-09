class EnrollmentReference < ActiveRecord::Base
  belongs_to :enrollment
  belongs_to :reference
  
end