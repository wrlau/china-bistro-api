class RemoveColumnsFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :order_number
    remove_column :orders, :customer_name
    remove_column :orders, :customer_phone
  end
end
