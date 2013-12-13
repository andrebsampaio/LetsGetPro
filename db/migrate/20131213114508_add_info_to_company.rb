class AddInfoToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :tel, :string
    add_column :companies, :website, :string
    add_column :companies, :img_url, :string
    add_column :companies, :owner_id, :integer
  end
end
