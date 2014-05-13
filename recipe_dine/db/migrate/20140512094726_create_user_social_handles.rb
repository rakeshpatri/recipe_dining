class CreateUserSocialHandles < ActiveRecord::Migration
  def change
    create_table :user_social_handles do |t|
    	t.integer :user_id
    	t.string :social_handle_type
    	t.string :social_handle_id
      t.timestamps
    end
  end
end
