class AddTimestampsToEnrollment < ActiveRecord::Migration
  def change
    add_column(:enrollments, :created_at, :datetime)
    add_column(:enrollments, :updated_at, :datetime)
  end
end
