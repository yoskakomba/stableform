class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.string :name
    end
  end
end
