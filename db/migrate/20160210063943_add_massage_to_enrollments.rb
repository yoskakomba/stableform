class AddMassageToEnrollments < ActiveRecord::Migration
  def change
    add_column :enrollments, :massage, :string
  end
end
