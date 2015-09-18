class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :description
      t.string :picture
      t.string :address
      t.string :city

      t.timestamps null: false
    end
  end
end
