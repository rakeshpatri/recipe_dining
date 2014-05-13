class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
    	t.integer :user_id
    	t.string :building
    	t.string :street
    	t.string :locality
    	t.string :city
    	t.integer :pin_code
    	t.integer :mobile_number
    	t.integer :landline
    	t.integer :alt_contact_number

      t.timestamps
    end
  end
end
