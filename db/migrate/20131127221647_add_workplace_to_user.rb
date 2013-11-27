class AddWorkplaceToUser < ActiveRecord::Migration
  def change
    add_column :users, :workplace, :string
  end
end
