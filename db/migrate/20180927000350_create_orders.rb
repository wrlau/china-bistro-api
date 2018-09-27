class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :order_number
      t.string :customer_name
      t.string :customer_phone

      t.timestamps
    end
  end
end
