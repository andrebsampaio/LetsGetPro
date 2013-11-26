class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :location
      t.time :join_date
      t.string :acronym

      t.timestamps
    end
  end
end
