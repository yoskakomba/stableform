class EnrollmentBody < ActiveRecord::Base
  belongs_to :enrollment
  belongs_to :body
  
end