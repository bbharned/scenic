class CreateContactTable < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
    	t.string :name
    	t.string :email
    	t.string :phone
    	t.string :organization
    	t.text :message
    	t.timestamps
    end
  end
end