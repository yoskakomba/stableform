class AddMyFriendToEnrollments < ActiveRecord::Migration
  def change
    add_column :enrollments, :my_friend, :string
  end
end
