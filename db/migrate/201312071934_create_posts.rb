class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :content
      t.string :title
      t.integer :shares
      t.integer :user_id

      t.timestamps
    end
  end
end