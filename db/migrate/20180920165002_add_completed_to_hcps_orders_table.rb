class AddCompletedToHcpsOrdersTable < ActiveRecord::Migration[5.0]
  def change
  	add_column :hcps_orders, :completed, :boolean, default: false
  end
end
