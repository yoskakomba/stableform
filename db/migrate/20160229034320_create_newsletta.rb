class CreateNewsletta < ActiveRecord::Migration
  def change
    create_table :newsletta do |t|
      t.string :name
    end
  end
end
