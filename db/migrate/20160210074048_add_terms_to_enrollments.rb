class AddTermsToEnrollments < ActiveRecord::Migration
  def change
    add_column :enrollments, :terms, :string
  end
end
