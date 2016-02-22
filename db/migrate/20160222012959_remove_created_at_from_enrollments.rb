class RemoveCreatedAtFromEnrollments < ActiveRecord::Migration
  def change
    remove_column :enrollments, :created_at, :datatype
  end
end
