class AddChefDetailsToUsers < ActiveRecord::Migration
  def change
  	add_column :users , :salutation, :string
  	add_column :users, :family, :string
  	add_attachment :users, :user_photo
  	add_attachment :users, :kitchen_photo
  	add_attachment :users, :family_photo
  	add_column :users, :information_source, :string
  	add_column :users, :bio, :string
  	add_column :users, :day_spending, :string
  	add_column :users, :why_love_cooking, :string
  	add_column :users, :place_person_inspired, :string
  	add_column :users, :best_compliments, :string
  	add_column :users, :expectation_from_holachef, :string
    remove_column :users, :contact_no
  end
end
