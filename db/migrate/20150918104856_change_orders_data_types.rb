class ChangeOrdersDataTypes < ActiveRecord::Migration
  def change
    change_table :orders do |t|
      t.change :cost, 'decimal USING CAST(cost AS decimal)'
      t.change :rating, 'integer USING CAST(rating AS integer)'
      t.change :order_count, 'integer USING CAST(rating AS integer)'
    end
  end
end