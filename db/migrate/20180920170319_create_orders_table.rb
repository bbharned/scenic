class CreateOrdersTable < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
    	t.string :facility_info
    	t.integer :location_id
    	t.string :order_type
    	t.boolean :emergency_lights, default: false
    	t.string :requestor_name
    	t.string :requestor_phone
    	t.string :email 
    	t.text :comments
    	t.boolean :completed, default: false
    	t.timestamps
    end
  end
end
