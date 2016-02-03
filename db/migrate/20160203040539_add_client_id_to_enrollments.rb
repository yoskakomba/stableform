class AddClientIdToEnrollments < ActiveRecord::Migration
  def change
    add_column :enrollments, :client_id, :integer
  end
end
