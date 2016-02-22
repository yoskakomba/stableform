class CreateEnrollmentFriends < ActiveRecord::Migration
  def change
    create_table :enrollment_friends do |t|
      t.integer :friend_id, :enrollment_id
    end
  end
end
