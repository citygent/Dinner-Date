class GiveDefaultToOrderCount < ActiveRecord::Migration
  def change
    change_column :orders, :order_count, :integer, :default => 1
  end
end
