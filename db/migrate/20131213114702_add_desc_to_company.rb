class AddDescToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :description, :string
  end
end
