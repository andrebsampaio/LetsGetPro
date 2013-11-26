class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :curriculum
      t.string :email
      t.time :join_date
      t.string :crypted_password

      t.timestamps
    end
  end
end
