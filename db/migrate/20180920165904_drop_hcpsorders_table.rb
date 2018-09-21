class DropHcpsordersTable < ActiveRecord::Migration[5.0]
  def change
  	drop_table :hcps_orders
  end
end
