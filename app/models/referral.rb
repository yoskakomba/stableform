class Referral < ActiveRecord::Base
  validates :name, length: { minimum: 2, maximum: 25 }
  
end