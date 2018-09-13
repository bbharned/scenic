class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.integer :scl_ref
      t.string :name
      t.string :type
      t.string :address
      t.string :area

      t.timestamps
    end
  end
end
