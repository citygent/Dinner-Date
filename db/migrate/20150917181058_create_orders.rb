class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :cost
      t.string :photo
      t.string :rating
      t.string :order_count
      t.references :dish, index: true, foreign_key: true
      t.references :restaurant, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
