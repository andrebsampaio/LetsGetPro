class AddConfirmationToFriendships < ActiveRecord::Migration
  def change
    add_column :friendships, :confirmation, :boolean
  end
end
