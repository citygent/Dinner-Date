class AddWebsiteAndPhoneToRestaurant < ActiveRecord::Migration
  def change
    add_column :restaurants, :website, :string
    add_column :restaurants, :phone, :string
  end
end
