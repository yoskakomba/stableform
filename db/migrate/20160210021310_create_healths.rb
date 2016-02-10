class CreateHealths < ActiveRecord::Migration
  def change
    create_table :healths do |t|
      t.string :name
    end
  end
end
