class Enrollment < ActiveRecord::Base
  belongs_to :client
  validates :client_id, presence: true
  validates :name, :last_name, :address, :suburb, :occupation, :past_medical_history, :medication, :symptoms, 
                                          presence: true, length: { minimum: 5, maximum: 100 }
  validates :dob, :telephone, :post_code, presence: true
  default_scope -> { order(updated_at: :desc) }
end