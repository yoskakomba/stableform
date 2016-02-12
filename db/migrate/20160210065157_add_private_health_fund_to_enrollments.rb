class AddPrivateHealthFundToEnrollments < ActiveRecord::Migration
  def change
    add_column :enrollments, :private_health_fund, :string
  end
end
