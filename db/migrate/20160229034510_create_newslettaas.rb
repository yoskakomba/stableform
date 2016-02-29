class CreateNewslettaas < ActiveRecord::Migration
  def change
    create_table :newslettaas do |t|
      t.string :name
    end
  end
end
