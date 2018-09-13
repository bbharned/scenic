class ChangeColumnNameInLocations < ActiveRecord::Migration[5.0]
  def change
  	remove_column :locations, :type
  	add_column :locations, :sc_type, :string
  end
end
