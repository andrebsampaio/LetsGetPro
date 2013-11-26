class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.string :content
      t.time :date
      t.string :author

      t.timestamps
    end
  end
end
