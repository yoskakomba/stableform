class AddNewsletterToEnrollments < ActiveRecord::Migration
  def change
    add_column :enrollments, :newsletter, :string
  end
end
