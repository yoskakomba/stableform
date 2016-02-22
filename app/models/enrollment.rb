class Enrollment < ActiveRecord::Base
  belongs_to :client #HARUS DIILANGIN
  has_many :enrollment_references
  has_many :references, through: :enrollment_references
  has_many :enrollment_preferences
  has_many :preferences, through: :enrollment_preferences
  has_many :enrollment_bodies
  has_many :bodies, through: :enrollment_bodies
  has_many :enrollment_healths
  has_many :healths, through: :enrollment_healths
  validates :client_id, presence: true #HARUS DIILANGIN
  validates :name, :address, :suburb, presence: true, length: { maximum: 100 }
  validates :dob, :post_code, presence: true
  validates :telephone, format: { with: /\d[0-9]\)*\z/, message: "bad format, please use accepted Australian format, ex: 0421813629" }
  default_scope -> { order(updated_at: :desc) }
end